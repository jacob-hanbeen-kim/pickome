// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class ImageTemp extends StatefulWidget {
//   @override
//   _ImageTempState createState() => _ImageTempState();
// }
//
// class _ImageTempState extends State<ImageTemp> {
//
//   // PickedFile _image;
//   //
//   // final ImagePicker picker = ImagePicker();
//
//   // Future getImage() async {
//   //   // final pickedFile = await picker.getImage(source: ImageSource.camera);
//   //   final pickedFile = await picker.getImage(source: ImageSource.camera);
//   //
//   //   setState(() {
//   //     if (pickedFile != null) {
//   //       _image = pickedFile;
//   //     } else {
//   //       print('No image selected.');
//   //     }
//   //   });
//   // }
//
//   List<PickedFile> pickedImages = [];
//   ImagePicker imagePicker = new ImagePicker();
//
//   _imgFromCamera() async {
//     PickedFile image = await imagePicker.getImage(
//         source: ImageSource.camera, imageQuality: 50
//     );
//
//     setState(() {
//       // _image = image;
//     });
//   }
//
//   _imgFromGallery() async {
//     PickedFile image = await imagePicker.getImage(
//         source: ImageSource.gallery, imageQuality: 50
//     );
//
//     setState(() {
//       if (pickedImages.contains((image))) {
//         pickedImages.remove(image);
//       } else {
//         pickedImages.add(image);
//       }
//     });
//   }
//
//   void _showPicker(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext bc) {
//           return SafeArea(
//             child: Container(
//               child: new Wrap(
//                 children: <Widget>[
//                   new ListTile(
//                       leading: new Icon(Icons.photo_library),
//                       title: new Text('Photo Library'),
//                       onTap: () {
//                         _imgFromGallery();
//                         Navigator.of(context).pop();
//                       }),
//                   new ListTile(
//                     leading: new Icon(Icons.photo_camera),
//                     title: new Text('Camera'),
//                     onTap: () {
//                       _imgFromCamera();
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }
//     );
//   }
//
//   List<Widget> showImages() {
//     List<Widget> imageList = [];
//     for(PickedFile image in pickedImages) {
//       imageList.add(
//         Expanded(child: Image.file(File(image.path)))
//       );
//     }
//
//     return imageList;
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('testing image upload'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               children: showImages(),
//             ),
//             FlatButton(
//               onPressed: () => _showPicker(context),
//               child: Text('upload image'),
//               color: Colors.white70,
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }