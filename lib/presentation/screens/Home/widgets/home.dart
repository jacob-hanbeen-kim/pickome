import 'package:flutter/material.dart';

//
class Home extends StatefulWidget {
  const Home({this.email});

  final String email;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.black,
                ),
                label: Text(widget.email,
                    style: const TextStyle(color: Colors.black))),
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.menu_rounded, color: Colors.black),
                onPressed: () {})
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundImage:
                          AssetImage('assets/images/profileImg.jpg'),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Text('23',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                        const Text('Peeker',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    const SizedBox(width: 50.0),
                    Column(
                      children: [
                        const Text('51',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                        const Text('Peeking',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
          // Divider(
          //   indent: 20.0,
          //   endIndent: 20.0,
          // ),
          // Icon(
          //   Icons.home,
          //   size: 150.0,
          // ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const IconButton(
                  icon: Icon(Icons.apps_outlined), onPressed: null),
              const IconButton(icon: Icon(Icons.kitchen), onPressed: null),
              const IconButton(
                  icon: Icon(Icons.bathtub_outlined), onPressed: null),
              const IconButton(
                  icon: Icon(Icons.king_bed_outlined), onPressed: null),
              const IconButton(
                  icon: Icon(Icons.business_center_outlined), onPressed: null),
              const IconButton(
                  icon: Icon(Icons.deck_outlined), onPressed: null),
            ],
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 1),
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 1),
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                      ]),
                  const SizedBox(height: 1.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 1),
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 1),
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                      ]),
                  const SizedBox(height: 1.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 1),
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 1),
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                      ]),
                  const SizedBox(height: 1.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 1),
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 1),
                        const Flexible(
                            child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/profileImg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                      ]),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() => currentTab = index);
        },
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(
          color: Colors.black38,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        selectedFontSize: 12.0,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'Idea',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'myRoom',
          ),
        ],
      ),
    );
  }
}
