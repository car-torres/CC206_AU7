import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Center(
          child: const Text(
            "Gesture and Navigation",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ),
        toolbarHeight: 60,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/touchmenot.jpg'), // Background image
            fit: BoxFit.cover, // Cover the entire container
          ),
        ),
        child: Stack(
          children: [
            // Centered content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20), // Spacer before the button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about_me');
                    },
                    child: const Text("Go to About Me"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




