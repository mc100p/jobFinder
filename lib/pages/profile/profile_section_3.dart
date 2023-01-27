import 'package:flutter/material.dart';

class ProfileSection3 extends StatelessWidget {
  const ProfileSection3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 35.0),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Biography",
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 20),
            Wrap(
              children: [
                Text(
                  "Hello, my name is Andri and I am a digital artist based in Mumbai. After graduating with a bachelor's degree in graphic design, I began my freelancing career by creating pop culture digital art. I have been creating commissions for two years and have designed art for popular businesses such as Spiced and The Paper Pepper Club.",
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
