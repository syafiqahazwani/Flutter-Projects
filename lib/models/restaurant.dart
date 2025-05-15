import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart_item.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger", 
      description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "lib/images/burgers/cheese_burger.jpg", 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger", 
      description: "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight", 
      imagePath: "lib/images/burgers/bbq_burger.jpg", 
      price: 10.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger", 
      description: "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whole grain bun.", 
      imagePath: "lib/images/burgers/vege_burger.jpg", 
      price: 9.49, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Hummus Spread", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger", 
      description: "A char-grilled chicken breast topped with a slice of grilled pineapple, Swiss cheese and.", 
      imagePath: "lib/images/burgers/aloha_burger.jpg", 
      price: 9.49, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Blue Moon Burger", 
      description: "This burger is a blue cheese lover's dream. It features a succulent ground beef patty, c.", 
      imagePath: "lib/images/burgers/bluemoon_burger.jpg", 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Sauteed Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Spicy Mayo", price: 0.99),
      ],
    ),

      // salads
    Food(
      name: "Caesar Salad", 
      description: "Crisp romaine lettuce, parmesean cheese, croutons, and Caesar dressing.", 
      imagePath: "lib/images/salads/caesar_salad.jpg", 
      price: 7.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Greek Salad", 
      description: "Tomatos, cucumber, red onions, olives, feta cheese with olive oil and herbs.", 
      imagePath: "lib/images/salads/greek_salad.jpg", 
      price: 8.49, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.49),
        Addon(name: "Grilled Shrimp", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad", 
      description: "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette.", 
      imagePath: "lib/images/salads/quinoa_salad.jpg", 
      price: 9.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Asian Sesame Salad", 
      description: "Delight in the flavors of the East with this sesame-infused salad. It includes mixed green.", 
      imagePath: "lib/images/salads/asiansesame_salad.jpg", 
      price: 9.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Mandarin Oranges", price: 0.99),
        Addon(name: "Almond Slivers", price: 1.49),
        Addon(name: "Extra Teriyaki Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "South West Chicken Salad", 
      description: "The colorful salad combines the zesty flavors of the Southwest. It's loaded with mixed", 
      imagePath: "lib/images/salads/southwest_salad.jpg", 
      price: 9.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Pico de Gallo", price: 1.49),
        Addon(name: "Guacamole", price: 1.99),
      ],
    ),

      // sides
    Food(
      name: "Sweet Potato Fries", 
      description: "Crisp sweet potato fries with a touch of salt.", 
      imagePath: "lib/images/sides/sweet_potato_side.jpg", 
      price: 4.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings", 
      description: "Golden and crispy onion rings, perfect for dipping.", 
      imagePath: "lib/images/sides/onion_rings_side.jpg", 
      price: 3.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "Parmesan Dust", price: 1.99),
      ],
    ),
    Food(
      name: "Garlic Bread", 
      description: "Warm and toasty garlic bread, topped with melted butter and parsley.", 
      imagePath: "lib/images/sides/garlic_bread_side.jpg", 
      price: 4.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.99),
        Addon(name: "Mozzarella Cheese", price: 1.49),
        Addon(name: "Marinara Dip", price: 1.99),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries", 
      description: "Savory sweet potato fries loaded with melted cheese, smoky bacon bits, and a dollop of.", 
      imagePath: "lib/images/sides/loadedfries_side.jpg", 
      price: 4.49, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Bacon Bites", price: 1.49),
        Addon(name: "Green Onions", price: 0.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites", 
      description: "Golden brown, bite-sized mac and cheese balls, perfect for on-the-go snacking. Served with.", 
      imagePath: "lib/images/sides/mac_side.jpg", 
      price: 4.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Bacon Bites", price: 0.99),
        Addon(name: "Jalapeno Slices", price: 1.49),
        Addon(name: "Sriracha Drizzle", price: 0.99),
      ],
    ),

      // desserts
    Food(
      name: "Chocolate Brownie", 
      description: "Rich and fudgy chocolate brownie, with chucks of chocolate.", 
      imagePath: "lib/images/desserts/brownie_dessert.jpg", 
      price: 5.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake", 
      description: "Creamy cheesecake on a graham cracker crust, with a berry compote.", 
      imagePath: "lib/images/desserts/cheesecake_dessert.jpg", 
      price: 6.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Apple Pie", 
      description: "Classic apple pie with a flanky crust and a cinnamon-spices apple filling", 
      imagePath: "lib/images/desserts/apple_pie_dessert.jpg", 
      price: 5.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 0.99),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Pear Pie", 
      description: "A tangy and sweet key pear pie with a rich, creamy filling and a crumbly graham cracker crust.", 
      imagePath: "lib/images/desserts/pear_pie_dessert.jpg", 
      price: 5.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake", 
      description: "A delectable red velvet cake with a warm, gooey chocolate lava center, served with a sco.", 
      imagePath: "lib/images/desserts/redvelvet_dessert.jpg", 
      price: 5.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 1.49),
        Addon(name: "Chocolate Sprinkles", price: 0.99),
      ],
    ),

      // drinks
    Food(
      name: "Lemonade", 
      description: "Refreshing lemonade made with real lemons and a touch of sweetness.", 
      imagePath: "lib/images/drinks/lemonade_drink.jpg", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Iced Tea", 
      description: "Chilled iced tea with a hint of lemon, served over ice.", 
      imagePath: "lib/images/drinks/ice_tea_drink.jpg", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Peach Flavor", price: 0.99),
        Addon(name: "Lemon Slices", price: 1.49),
        Addon(name: "Honey", price: 1.99),
      ],
    ),
    Food(
      name: "Smoothie", 
      description: "A blend of fresh fruits and yogurt, perfect for a healty boost.", 
      imagePath: "lib/images/drinks/smoothie_drink.jpg", 
      price: 4.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Protein Powder", price: 0.99),
        Addon(name: "Almond Milk", price: 1.49),
        Addon(name: "Chia Seeds", price: 1.99),
      ],
    ),
    Food(
      name: "Mojito", 
      description: "A classic Cuban cocktail with muddled lime and mint, sweetened with sugar.", 
      imagePath: "lib/images/drinks/mojito_drink.jpg", 
      price: 4.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Mint", price: 0.49),
        Addon(name: "Raspberry Puree", price: 0.99),
        Addon(name: "Splash of Coconut Rum", price: 1.99),
      ],
    ),
    Food(
      name: "Caramel Macchiato", 
      description: "A layered coffee drink with steamed milk, espresso, and vanilla syrup.", 
      imagePath: "lib/images/drinks/caramel_drink.jpg", 
      price: 4.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.99),
        Addon(name: "Hazelnut Syrup", price: 0.49),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = '99 Holywood Blv';

  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

  O P E R A T I O N S

  */
  

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
         ListEquality().equals(item.selectedAddons, selectedAddons);
      
      return isSameFood && isSameAddons;   
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quality++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food, 
          selectedAddons: selectedAddons,
          ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quality > 1) {
        _cart[cartIndex].quality--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quality;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quality;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*

  H E L P E R S

  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate = 
      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quality} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
        if (cartItem.selectedAddons.isNotEmpty) {
          receipt
            .writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
        }
        receipt.writeln();
    }

    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
      .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
      .join(", ");
  }

}