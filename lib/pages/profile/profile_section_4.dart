import 'package:flutter/material.dart';

class ProfileSection4 extends StatelessWidget {
  const ProfileSection4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.horizontal,
        children: [
          statistics("Post View", "254"),
          statistics("Applied Job", "35"),
          statistics("Search Result", "15"),
        ],
      ),
    );
  }

  Widget statistics(String title, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 20),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 15),
            Text(
              data,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
