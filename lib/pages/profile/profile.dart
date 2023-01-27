import 'package:flutter/material.dart';
import 'package:jobfinder/pages/profile/profile_section_1.dart';
import 'package:jobfinder/pages/profile/profile_section_2.dart';
import 'package:jobfinder/pages/profile/profile_section_3.dart';
import 'package:jobfinder/pages/profile/profile_section_4.dart';
import 'package:jobfinder/pages/profile/profile_section_5.dart';
import 'package:jobfinder/pages/profile/profile_section_6.dart';
import 'package:jobfinder/utils/custom_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: size.height,
        child: CustomScrollView(
          slivers: [
            SliverPadding(padding: const EdgeInsets.symmetric(vertical: 40.0)),
            ProfileSection1(),
            ProfileSection2(size: size),
            ProfileSection3(),
            ProfileSection4(),
            ProfileSection5(),
            ProfileSection6(),
            SliverPadding(padding: const EdgeInsets.symmetric(vertical: 10)),
          ],
        ),
      ),
    );
  }
}
