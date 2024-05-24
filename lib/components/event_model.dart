// class Event {
//   String id;
//   String image;
//   String category;
//   String title;
//   DateTime date;
//   String time;
//   String location;
//   String description;

//   Event({
//     required this.id,
//     required this.image,
//     required this.category,
//     required this.title,
//     required this.date,
//     required this.time,
//     required this.location,
//     required this.description,
//   });

//   factory Event.fromMap(Map<String, dynamic> data, String documentId) {
//     return Event(
//       id: documentId,
//       image: data['image'],
//       category: data['category'],
//       title: data['title'],
//       date: (data['date'] as Timestamp).toDate(),
//       time: data['time'],
//       location: data['location'],
//       description: data['description'],
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'image': image,
//       'category': category,
//       'title': title,
//       'date': date,
//       'time': time,
//       'location': location,
//       'description': description,
//     };
//   }
// }
