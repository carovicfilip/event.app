import 'package:flutter/material.dart';

class SearchComponent extends StatefulWidget {
  @override
  _SearchComponentState createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Pronadji dogadjaj',
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide:
                BorderSide(color: Colors.white), // Transparent border color
          ),
          filled: true,
          fillColor: Colors.white, // Set background color to white
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
                color: Color(0xFF00224D)), // Border color when focused
          ),
        ),
        onChanged: (value) {
          // Handle search query changes
          // You can perform search operations here
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
