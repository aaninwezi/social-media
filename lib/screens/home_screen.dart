import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';
import '../screens/activity_feed_screen.dart';
import '../screens/message_screen.dart';
import '../screens/profile.dart';
import '../screens/timeline_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/main';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isAuth = false;
  PageController pageController;
  int pageIndex = 2;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 2,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Scaffold buildAuthScreen() {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Profile(),
          MessageScreen(),
          TimelineScreen(),
          ActivityFeedScreen(),
          SettingsScreen(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: onTap,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).accentColor,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Newsfeed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildAuthScreen();
  }
}
