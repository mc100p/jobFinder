import 'package:flutter/material.dart';
import 'package:jobfinder/pages/homepage/homepage_view/home_page_view_section1.dart';
import 'package:jobfinder/pages/homepage/homepage_view/home_page_view_section2.dart';
import 'package:jobfinder/pages/homepage/homepage_view/home_page_view_section3.dart';
import 'package:jobfinder/pages/homepage/homepage_view/home_page_view_section4.dart';
import 'package:jobfinder/pages/homepage/homepage_view/home_page_view_section5.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 243, 243),
      body: CustomScrollView(
        slivers: [
          HomePageViewSection1(),
          HomePageViewSection2(),
          HomePageViewSection3(),
          HomePageViewSection4(),
          HomePageViewSection5(),
        ],
      ),
    );
  }
}
