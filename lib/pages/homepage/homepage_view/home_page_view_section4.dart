import 'package:flutter/material.dart';
import 'package:jobfinder/utils/custom_icons_icons.dart';

class HomePageViewSection4 extends StatelessWidget {
  const HomePageViewSection4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      sliver: SliverToBoxAdapter(
        child: Container(
          height: 50,
          width: double.infinity,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 12.0)),
              categoryTiles(CustomIcons.figma, "UX/UI Design"),
              categoryTiles(CustomIcons.javascript_logo, "Developer"),
              categoryTiles(CustomIcons.camera, "Photography"),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryTiles(IconData iconData, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 25),
        decoration: BoxDecoration(
            color: title == 'UX/UI Design'
                ? Colors.black
                : Color.fromARGB(255, 228, 228, 228),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              iconData,
              color: title == 'UX/UI Design' ? Colors.white : Colors.black,
            ),
            SizedBox(width: 15.0),
            Text(
              title,
              style: TextStyle(
                color: title == 'UX/UI Design' ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
