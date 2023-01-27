import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobfinder/utils/custom_icons_icons.dart';

class ProfileSection1 extends StatelessWidget {
  const ProfileSection1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => context.pop(),
              child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Icon(Icons.arrow_back_sharp,
                      size: 22, color: Colors.black)),
            ),
            Text(
              "Profile",
              style: TextStyle(fontSize: 18),
            ),
            Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Icon(CustomIcons.notification,
                    size: 20, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
