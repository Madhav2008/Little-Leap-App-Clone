// import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:little_leap_clone/Screens/Home_Screen.dart';
import 'package:little_leap_clone/Screens/Leaderboard.dart';
import 'package:little_leap_clone/Screens/Live_Classes.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> _tabItems = [
    HomeScreen(),
    LiveClasses(),
    Leaderboard(),
  ];
  int _selectedIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // return
    // StreamBuilder(
    // stream: Connectivity().onConnectivityChanged,
    // builder:
    //     (BuildContext context, AsyncSnapshot<ConnectivityResult> snapshot) {
    //   if (snapshot != null &&
    //       snapshot.hasData &&
    //       snapshot.data != ConnectivityResult.none) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _tabItems.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 8,
            ),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.green.shade800,
              iconSize: 26,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.videocam_outlined,
                  text: 'Live Classes',
                ),
                GButton(
                  icon: Icons.leaderboard_outlined,
                  text: 'Leaderboard',
                ),
                GButton(
                  icon: Icons.menu,
                  text: 'Menu',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      // CurvedNavigationBar(
      //   key: _bottomNavigationKey,
      //   index: 0,
      //   height: 50,
      //   items: [
      //     Icon(
      //       Icons.home,
      //       size: 30,
      //       color: (_page == 0) ? Colors.green : Colors.white,
      //     ),
      //     Icon(
      //       Icons.videocam_outlined,
      //       size: 30,
      //       color: (_page == 1) ? Colors.green : Colors.white,
      //     ),
      //     Icon(
      //       Icons.leaderboard_outlined,
      //       size: 30,
      //       color: (_page == 2) ? Colors.green : Colors.white,
      //     ),
      //     Icon(
      //       Icons.leaderboard_outlined,
      //       size: 30,
      //       color: (_page == 3) ? Colors.green : Colors.white,
      //     ),
      //   ],
      //   color: Colors.green,
      //   buttonBackgroundColor: Colors.grey[50],
      //   backgroundColor: Colors.green.shade400,
      //   animationDuration: Duration(milliseconds: 500),
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //     });
      //   },
      //   letIndexChange: (index) => true,
      // ),
      // body: _tabItems[_page],
    );
    //     } else {
    //       return Center(
    //           child: Container(
    //         color: Colors.white,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   // Icon(Icons.favorite),
    //                   // SizedBox(width:5),
    //                   Image.asset(
    //                     'assets/images/no-internet.png',
    //                     width: 130,
    //                     height: 130,
    //                     // color: Colors.white,
    //                     // color: Colors.yellow,
    //                   ),
    //                   // SizedBox(width:5),
    //                   // Icon(Icons.favorite),
    //                 ],
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   // Icon(Icons.wifi_off),
    //                   // SizedBox(width:5),
    //                   Text(
    //                     "No Internet Access",
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 25,
    //                       color: Colors.black,
    //                       // color: Colors.yellow,
    //                     ),
    //                   ),
    //                   // SizedBox(width:5),
    //                   // Icon(Icons.wifi_off),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ));
    //     }
    //   },
    // );
  }
}
