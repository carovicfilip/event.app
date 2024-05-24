import 'package:flutter/material.dart';
import '../screens/admin/user/event_details_screen.dart';

class EventCategoryCard extends StatelessWidget {
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
            padding:
                const EdgeInsets.only(top: 3, left: 5, right: 5, bottom: 5),
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
                  //categiry
                  child: Text(
                    'PREDSTAVA',
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15, right: 10),
                  //titel
                  child: Text(
                    'LAZLJIVICA',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.date_range_outlined,
                            size: 22,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '30.05.2024.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            size: 22,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '20h',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
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
