import 'package:flutter/material.dart';
import 'package:jobfinder/utils/custom_painter.dart';
import 'package:jobfinder/utils/custom_widget.dart';
import 'package:jobfinder/utils/magic_string.dart';

class ProfileSection2 extends StatelessWidget {
  const ProfileSection2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: size.height * 0.28,
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                    size: const Size(double.infinity, 200),
                    child: CustomPaint(
                      painter: CirclePainter(),
                    )),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 70,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(50)),
                child: CircleAvatar(
                  backgroundColor: backgroundColor,
                  radius: 30,
                  foregroundImage: AssetImage(ImageNames.profile_photo),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Andri",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Fresh Graduate",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
