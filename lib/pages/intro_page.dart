import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset(
                  'lib/images/nike.png',
                  height: 115,
                ),

                const SizedBox(height: 150.0),

                //title
                const Text(
                  'Nike SNKRS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                //sub title
                const Text(
                  'Brand new sneakers and custom kicks made with premium quality',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                ),

                const SizedBox(height: 50.0),

                //start now button
                GestureDetector(
                  //to navigate to home page on tap
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );

                    //makes a small sound for feedback
                    Feedback.forTap(context);
                  },

                  //for vibration on tap
                  onTapDown: (context) {
                    HapticFeedback.mediumImpact();
                  },

                  //styling of button
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(8)
                    ),
                    padding: const EdgeInsets.all(25.0),
                    child: const Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
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
