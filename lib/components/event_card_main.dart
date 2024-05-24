import 'package:flutter/material.dart';
import '../screens/admin/user/event_details_screen.dart';

class EventCardMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const EventDetailsScreen(),
          ),
        );
      },
      child: Card(
        // Card UI implementation
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
          ),
          height: 300,
          width: 200,
          padding: const EdgeInsets.only(top: 3, left: 5, right: 5, bottom: 5),
          child: Column(
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(3.0),
                child: Image.network(
                  'https://repertoar.rs/wp-content/uploads/29.2.2024_11_55_24_CHALLENGERS_RS_smanjeno.jpg',
                  width: 160,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 3),
                child: Text(
                  'PREDSTAVA',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 15, right: 10),
                child: Text(
                  'LAZLJIVICA',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      '30.05.2024.',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '20h',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
