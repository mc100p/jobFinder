import 'package:flutter/material.dart';
import 'package:jobfinder/utils/custom_icons_icons.dart';
import 'package:jobfinder/utils/custom_widget.dart';
import 'package:jobfinder/utils/magic_string.dart';

class HomePageViewSection1 extends StatelessWidget {
  const HomePageViewSection1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 100,
      flexibleSpace: indent(
        35.0,
        0,
        FlexibleSpaceBar(
          centerTitle: true,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(ImageNames.profile_photo)),
              SizedBox(width: 9),
              Column(
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
                  SizedBox(height: 5),
                  Text(
                    "The Best Activity To Do",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Spacer(),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(CustomIcons.search, size: 14))
            ],
          ),
        ),
      ),
    );
  }
}
