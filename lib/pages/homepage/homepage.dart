import 'package:flutter/material.dart';
import 'package:jobfinder/pages/calendar/calendar.dart';
import 'package:jobfinder/pages/profile/profile.dart';
import 'package:jobfinder/pages/search/search.dart';
import 'package:jobfinder/utils/bottom_navigation_bar.dart';
import 'homepage_view/home_page_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final PageController _pageController = PageController();

  void _onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBarWidget(currentIndex: _currentIndex, onTap: _onTap),
      body: PageView(
        controller: _pageController,
        children: [
          HomePageView(),
          Search(),
          Calendar(),
          Profile(),
        ],
      ),
    );
  }
}
