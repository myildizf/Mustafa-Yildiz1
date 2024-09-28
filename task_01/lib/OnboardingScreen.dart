import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Skip Button
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: ElevatedButton(
                      onPressed: () {
                        // Skip action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                          ),
                        ),
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 49), // Adjusted to match top: 109
                // Image Section (Placeholder used here)
                SizedBox(
                  width: 320,
                  height: 320,
                  child: Image.network(
                      'images/Frame.png'), // or Image.asset
                ),

                SizedBox(height: 24), // Space between the image and text
                // Heading Text
                Text(
                  'Now reading books will be easier',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.03,
                    color: Colors.black,
                    height: 1.35,
                  ),
                ),
                SizedBox(height: 32), // Adjusted to match top spacing
                // Body Text
                Text(
                  'Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA6A6A6),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 40),
                // Buttons with 3 dots above
                Column(
                  children: [
                    // 3 dots
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple, // Adjust as needed
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 16), // Space between dots and buttons
                    // Continue Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Continue action
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Colors.purple,
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8), // Gap between buttons
                    // Sign in Button
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          // Sign in action
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40), // Bottom padding
              ],
            ),
          ),
        ),
      ),
    );
  }
}
