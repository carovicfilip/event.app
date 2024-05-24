// import 'package:flutter/material.dart';
// import '../screens/admin/user/event_details_screen.dart';
// import 'event_card_model.dart';

// class ReusableEventCard extends StatelessWidget {
//   final EventCardModel event;
//   final double width;
//   final double height;
//   final double imageHeight;
//   final double imageWidth;
//   final TextStyle categoryStyle;
//   final TextStyle titleStyle;
//   final TextStyle dateStyle;
//   final TextStyle timeStyle;
//   final TextStyle? descriptionStyle;

//   ReusableEventCard({
//     required this.event,
//     required this.width,
//     required this.height,
//     required this.imageHeight,
//     required this.imageWidth,
//     required this.categoryStyle,
//     required this.titleStyle,
//     required this.dateStyle,
//     required this.timeStyle,
//     this.descriptionStyle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => EventDetailsScreen(event: event),
//           ),
//         );
//       },
//       child: Card(
//         child: Container(
//           decoration: const BoxDecoration(
//             color: Color.fromARGB(255, 255, 255, 255),
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(8),
//               bottomRight: Radius.circular(8),
//             ),
//           ),
//           height: height,
//           width: width,
//           padding: const EdgeInsets.all(5.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(3.0),
//                 child: Image.network(
//                   event.imageUrl,
//                   width: imageWidth,
//                   height: imageHeight,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   event.category,
//                   style: categoryStyle,
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
//                 child: Text(
//                   event.title,
//                   style: titleStyle,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: Row(
//                   children: [
//                     Icon(Icons.date_range_outlined, size: 22),
//                     SizedBox(width: 5),
//                     Text(
//                       event.date,
//                       style: dateStyle,
//                     ),
//                     Spacer(),
//                     Icon(Icons.access_time_outlined, size: 22),
//                     SizedBox(width: 5),
//                     Text(
//                       event.time,
//                       style: timeStyle,
//                     ),
//                   ],
//                 ),
//               ),
//               if (event.description != null)
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Text(
//                     event.description!,
//                     style: descriptionStyle,
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
