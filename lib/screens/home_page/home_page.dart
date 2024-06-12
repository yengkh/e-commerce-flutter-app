import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_commerce_flutter_app/screens/home_page_body/home_page_body.dart';
import 'package:e_commerce_flutter_app/screens/profile/profile.dart';
import 'package:e_commerce_flutter_app/screens/setting/setting.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List<Widget> bodyList = [
    const HomePageBody(),
    const Setting(),
    const Profile(),
  ];

  final List<IconData> _iconList = [
    Icons.home,
    Icons.settings,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyList[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.white,
        backgroundColor: Colors.blue[400],
        blurEffect: true,
        gapWidth: 2.0,
        icons: _iconList,
        activeIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
