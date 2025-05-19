import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/themes/theme_provider.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_application_2/themes/theme_provider.dart';
//import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // dark mode
                Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
            
                // switch
                CupertinoSwitch(
                  value: 
                  Provider.of<ThemeProvider>(context, listen: false)
                        .isDarkMode,
                  onChanged: (value) =>
                        Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}