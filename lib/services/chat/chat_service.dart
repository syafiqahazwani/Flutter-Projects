import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/models/message.dart';

class ChatService {
  // get instance of firestore & auth
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // get user stream
  /*

  List<Map<String,dynamic> =

  [
  {
  'email': nsyafiqaha96@gmail.com,
  'id': ..
  },
  {
  'email' : test@gmail.com,
  'id' : ..
  },
  ]

  */
  Stream<List<Map<String, dynamic>>> getUsersStream() {
    return _firestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        // go through each individual user
        final data = doc.data();
        return {
          "uid": data["uid"],
          "email": data["email"],
        };
      }).toList();
    });
  }

  // send message
  Future<void> sendMessage(String receiverID, String message) async {
    // get current user info
    final String currentUserID = _auth.currentUser!.uid;
    final String currentUserEmail = _auth.currentUser!.email!;
    final Timestamp timestamp = Timestamp.now();

    // create a new message
    Message newMessage = Message(
      senderID: currentUserID, 
      senderEmail: currentUserEmail, 
      receiverID: receiverID, 
      message: message, 
      timestamp: timestamp,
      );

    // construct chat room ID for the two users (sorted to ensure uniqueness)
    List<String> ids = [currentUserID, receiverID];
    ids.sort(); // sort the ids (this ensure the chatroomID is the same for any 2 people)
    String chatroomID = ids.join('_');

    // add new message to database
    await _firestore
      .collection("chat_rooms")
      .doc(chatroomID)
      .collection("messages")
      .add(newMessage.toMap());
  }

  // get message
  Stream<QuerySnapshot> getMessages(String userID, otherUserID) {
    // construct a chatroom ID for the two users
    List<String> ids = [userID, otherUserID];
    ids.sort(); // ensure consistent ID
    String chatroomID = ids.join('_');


    return _firestore
      .collection("chat_rooms")
      .doc(chatroomID)
      .collection("messages")
      .orderBy("timestamp", descending: false)
      .snapshots();
  }
}