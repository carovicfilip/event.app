import 'package:flutter/material.dart';
import '../../../components/category.dart';
import '../../../components/circular_category_container.dart';
import '../../../components/event_card.dart';
import '../../../components/event_card_main.dart';
import '../../../components/search_component.dart';
import 'profile_screen.dart';

class MainScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(
        color: Color.fromARGB(255, 16, 16, 16),
        icon: Icons.nightlife_outlined,
        title: 'Nightlife'),
    Category(
        color: Color.fromARGB(255, 4, 83, 144),
        icon: Icons.sports_baseball_outlined,
        title: 'Sport'),
    Category(
        color: Color.fromARGB(255, 255, 0, 0),
        icon: Icons.palette,
        title: 'Umetnost'),
    Category(
        color: Color.fromARGB(255, 170, 125, 13),
        icon: Icons.business,
        title: 'Biznis'),
    Category(
        color: Color.fromARGB(255, 15, 128, 173),
        icon: Icons.child_friendly_outlined,
        title: 'Deca'),
    Category(
        color: Color.fromARGB(255, 120, 14, 191),
        icon: Icons.more_horiz,
        title: 'Ostalo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Row(
          children: [
            const Text(
              'Hej, Mina',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ProfileScreen()),
              // );
            },
            iconSize: 33,
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            iconSize: 33,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SearchComponent(),
              const SizedBox(
                height: 10,
              ),
              const Column(
                children: [
                  Text(
                    'DANAS',
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Container(
                  height: 300.0, // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10, // Number of soonest events
                    itemBuilder: (context, index) {
                      return EventCard(); // Replace with your event card widget
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Container(
                  height: 150.0, // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return CircularCategoryContainer(
                        color: category.color,
                        title: category.title,
                        icon: category.icon,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // Vertical list of events
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Disable scrolling
                itemCount: 20, // Number of events
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    margin: EdgeInsets.symmetric(vertical: 1.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:
                              EventCardMain(), // Replace with your event card widget
                        ),
                        SizedBox(width: 1.0), // Spacer between cards
                        Expanded(
                          child:
                              EventCardMain(), // Replace with your event card widget
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
