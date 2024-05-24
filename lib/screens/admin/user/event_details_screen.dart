import 'dart:ui';
import 'package:flutter/material.dart';

import '../../../components/event_description.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background image with blur effect
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenHeight,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Image.network(
                'https://atelje212.rs/wp-content/uploads/2024/04/plakat-web.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Image with size 300x450
          Positioned(
            left: (screenWidth - 300) / 2, // Center horizontally
            top: 70, // Adjust positioning as needed
            child: Container(
              width: 300,
              height: 450,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://atelje212.rs/wp-content/uploads/2024/04/plakat-web.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                    BorderRadius.circular(5), // Slightly rounded corners
              ),
            ),
          ),
          Positioned(
            top: 70 + 450 + 20, // Positioned 20 pixels below the image
            left: 0,
            right: 0,
            child: EventDescription(),
          ),

          //       Text(
          //         'Kategorija',
          //         style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.white,
          //         ),
          //       ),
        ],
      ),
    );
  }
}
