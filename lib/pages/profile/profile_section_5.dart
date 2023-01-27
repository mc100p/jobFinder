import 'package:flutter/material.dart';

class ProfileSection5 extends StatelessWidget {
  const ProfileSection5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          "Experience",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
