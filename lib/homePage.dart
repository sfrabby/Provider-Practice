import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'HomepageProvoder.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal, title: Text("Provider ")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ChangeNotifierProvider<homePageProvider>(
          create: (BuildContext context) => homePageProvider(),
          child: Consumer<homePageProvider>(
            builder: (BuildContext context, provider, Widget? child) => Column(
              children: [
                Text(
                  provider.eligibleMessage ?? "Please enter your age",
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                    color:  Colors.green
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {

                    int age = int.tryParse(value) ?? 0;
                    provider.checkEligiblity(age);},
                  decoration: InputDecoration(
                    hintText: "Enter your age",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
