import 'package:flutter/material.dart';
import '../screens/admin/user/category_screen.dart';

class CircularCategoryContainer extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;

  const CircularCategoryContainer({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryScreen(
              color: color,
              title: title,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
            ),
            SizedBox(height: 8), // Space between the circle and the title
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
