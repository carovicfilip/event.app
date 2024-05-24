import 'package:flutter/material.dart';
import '../../../components/event_category_card.dart';

class CategoryScreen extends StatelessWidget {
  final Color color;
  final String title;

  const CategoryScreen({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 226, 226, 226),
        child: ListView.builder(
          itemCount: 20, // Adjust the number of events as needed
          itemBuilder: (context, index) {
            return EventCategoryCard(); // Replace with your event card widget
          },
        ),
      ),
    );
  }
}
