import 'package:flutter/material.dart';

class EventDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // Card UI implementation
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          height: 300,
          width: 200,
          padding: const EdgeInsets.only(top: 3, left: 5, right: 5, bottom: 5),
          child: const Column(
            children: [
              // Image

              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 3),
                child: Text(
                  'PREDSTAVA',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                child: Text(
                  'LAZLJIVICA',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.date_range_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '30.05.2024.',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_time_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '20h',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Cineplexx',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, '
                          'when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
                          'It has survived not only five centuries, but also the leap into electronic typesetting, '
                          'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset '
                          'sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like '
                          'Aldus PageMaker including versions of Lorem Ipsum.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 120, 120, 120),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
