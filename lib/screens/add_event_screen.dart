// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:event/components/event_model.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';

// import 'dart:io';

// import 'package:image_picker/image_picker.dart';

// class AddEventScreen extends StatefulWidget {
//   @override
//   _AddEventScreenState createState() => _AddEventScreenState();
// }

// class _AddEventScreenState extends State<AddEventScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _categoryController = TextEditingController();
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//   final TextEditingController _dateController = TextEditingController();
//   final TextEditingController _timeController = TextEditingController();
//   final TextEditingController _locationController = TextEditingController();
//   File? _image;
//   final picker = ImagePicker();
//   final uuid = Uuid();

//   Future<void> _pickImage() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       }
//     });
//   }

//   Future<void> _addEvent() async {
//     if (_formKey.currentState!.validate()) {
//       String id = uuid.v4();
//       String imageUrl = '';

//       if (_image != null) {
//         final storageRef =
//             FirebaseStorage.instance.ref().child('event_images/$id');
//         await storageRef.putFile(_image!);
//         imageUrl = await storageRef.getDownloadURL();
//       }

//       Event event = Event(
//         image: imageUrl,
//         id: id,
//         imageUrl: imageUrl,
//         category: _categoryController.text,
//         title: _titleController.text,
//         description: _descriptionController.text,
//         date: DateTime.parse(_dateController.text),
//         time: _timeController.text,
//         location: _locationController.text,
//       );

//       await FirebaseFirestore.instance
//           .collection('events')
//           .doc(id)
//           .set(event.toMap());

//       Navigator.pop(context);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Event'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: <Widget>[
//               TextFormField(
//                 controller: _categoryController,
//                 decoration: InputDecoration(labelText: 'Category'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a category';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _titleController,
//                 decoration: InputDecoration(labelText: 'Title'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a title';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _descriptionController,
//                 decoration: InputDecoration(labelText: 'Description'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a description';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _dateController,
//                 decoration: InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a date';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _timeController,
//                 decoration: InputDecoration(labelText: 'Time'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a time';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _locationController,
//                 decoration: InputDecoration(labelText: 'Location'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a location';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               _image == null
//                   ? Text('No image selected.')
//                   : Image.file(_image!, height: 200),
//               ElevatedButton(
//                 onPressed: _pickImage,
//                 child: Text('Pick Image'),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _addEvent,
//                 child: Text('Add Event'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
