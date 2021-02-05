// import 'package:flutter/material.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/Button/TextButton.dart';
//
// class Home extends StatefulWidget {
//
//   Home({ this.email });
//
//   final String email;
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//   int currentTab = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Row(
//             children: [
//               TextButton.icon(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.lock_outline_rounded,
//                   color: Colors.black,
//                 ),
//                 label: Text('${widget.email}',
//                   style: TextStyle(
//                     color: Colors.black
//                   )
//                 )
//               ),
//               Spacer(),
//               IconButton(
//                   icon: Icon(
//                       Icons.menu_rounded,
//                       color: Colors.black
//                   ),
//                   onPressed: () {}
//               )
//             ],
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0.0,
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CircleAvatar(
//                         radius: 40.0,
//                         backgroundImage: AssetImage('assets/images/profileImg.jpg'),
//                       ),
//                       Spacer(),
//                       Column(
//                         children: [
//                           Text(
//                               '23',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 20.0,
//                                   fontWeight: FontWeight.bold
//                               )
//                           ),
//                           Text(
//                               'Peeker',
//                               style: TextStyle(
//                                   color: Colors.black
//                               )
//                           ),
//                         ],
//                       ),
//                       SizedBox(width: 50.0),
//                       Column(
//                         children: [
//                           Text(
//                               '51',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 20.0,
//                                   fontWeight: FontWeight.bold
//                               )
//                           ),
//                           Text(
//                               'Peeking',
//                               style: TextStyle(
//                                   color: Colors.black
//                               )
//                           ),
//                         ],
//                       ),
//                       Spacer(),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             // Divider(
//             //   indent: 20.0,
//             //   endIndent: 20.0,
//             // ),
//             // Icon(
//             //   Icons.home,
//             //   size: 150.0,
//             // ),
//             Divider(),
//             Row(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(icon: Icon(Icons.apps_outlined), onPressed: null),
//                 IconButton(icon: Icon(Icons.kitchen), onPressed: null),
//                 IconButton(icon: Icon(Icons.bathtub_outlined), onPressed: null),
//                 IconButton(icon: Icon(Icons.king_bed_outlined), onPressed: null),
//                 IconButton(icon: Icon(Icons.business_center_outlined), onPressed: null),
//                 IconButton(icon: Icon(Icons.deck_outlined), onPressed: null),
//               ],
//             ),
//             Divider(),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Flexible(
//                               fit: FlexFit.loose,
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                           SizedBox(width: 1),
//                           Flexible(
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                           SizedBox(width: 1),
//                           Flexible(
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                         ]
//                     ),
//                     SizedBox(height: 1.0),
//                     Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Flexible(
//                               fit: FlexFit.loose,
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                           SizedBox(width: 1),
//                           Flexible(
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                           SizedBox(width: 1),
//                           Flexible(
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                         ]
//                     ),
//                     SizedBox(height: 1.0),
//                     Row(
//                       mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Flexible(
//                             fit: FlexFit.loose,
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                           SizedBox(width: 1),
//                           Flexible(
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                           SizedBox(width: 1),
//                           Flexible(
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                         ]
//                     ),
//                     SizedBox(height: 1.0),
//                     Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Flexible(
//                               fit: FlexFit.loose,
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                           SizedBox(width: 1),
//                           Flexible(
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                           SizedBox(width: 1),
//                           Flexible(
//                               child: AspectRatio(
//                                 aspectRatio: 1.0,
//                                 child: Image(
//                                   image: AssetImage('assets/images/profileImg.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                           ),
//                         ]
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         currentIndex: currentTab,
//         onTap: (int index) {
//           setState(() => currentTab = index);
//         },
//         type: BottomNavigationBarType.fixed,
//         selectedIconTheme: IconThemeData(
//           color: Colors.black
//         ),
//         unselectedIconTheme: IconThemeData(
//           color: Colors.black38,
//         ),
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black38,
//         selectedFontSize: 12.0,
//         unselectedFontSize: 12.0,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.lightbulb_outline),
//             label: 'Idea',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'myRoom',
//           ),
//         ],
//       ),
//     );
//   }
// }
