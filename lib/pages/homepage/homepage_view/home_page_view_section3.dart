import 'package:flutter/material.dart';
import 'package:jobfinder/utils/custom_widget.dart';

class HomePageViewSection3 extends StatelessWidget {
  const HomePageViewSection3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: indent(
        35.0,
        0,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Added Categories",
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "View All",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
