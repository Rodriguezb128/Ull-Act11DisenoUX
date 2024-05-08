import 'package:flutter/material.dart';
import 'package:rodriguez0403/util/my_tab.dart';

import '../tab/basket_tab.dart';
import '../tab/box_tab.dart';
import '../tab/futboll_tab.dart';
import '../tab/raqueta_tab.dart';
import '../tab/skate_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // fut tab
    MyTab(
      iconPath: 'lib/icons/fut.png',
    ),

    // basket tab
    MyTab(
      iconPath: 'lib/icons/basket.png',
    ),

    // skate tab
    MyTab(
      iconPath: 'lib/icons/skate.png',
    ),

    // raqueta tab
    MyTab(
      iconPath: 'lib/icons/raqueta.png',
    ),

    // box tab
    MyTab(
      iconPath: 'lib/icons/box.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'Sport',
                    style: TextStyle(fontSize: 24, color: Color(0xff5d0404)),
                  ),
                  Text(
                    ' Lifee',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  FutbollTab(),

                  // burger page
                  BasketTab(),

                  // smoothie page
                  SkateTab(),

                  // pancake page
                  RaquetaTab(),

                  // pizza page
                  BoxTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
