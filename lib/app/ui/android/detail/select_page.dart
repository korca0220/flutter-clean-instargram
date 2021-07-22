import 'package:flutter/material.dart';
import 'package:flutter_clean_instagram/app/ui/android/detail/screens/camera.dart';
import 'package:flutter_clean_instagram/app/ui/android/detail/screens/gallary.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  int _currentIndex = 0;
  PersistentTabController _tabController =
      PersistentTabController(initialIndex: 0);

  List<Widget> screens = [
    Gallary(),
    Camera(),
    Center(
      child: Text('동영상'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _tabController,
      confineInSafeArea: true,
      screens: screens,
      items: [
        PersistentBottomNavBarItem(
            icon: Icon(
              Icons.photo_album_outlined,
            ),
            title: '',
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.black),
        PersistentBottomNavBarItem(
            icon: Icon(Icons.camera_enhance_outlined),
            title: '',
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.black),
        PersistentBottomNavBarItem(
            icon: Icon(Icons.video_camera_back_outlined),
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.black),
      ],
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style13,
    );
  }
}
