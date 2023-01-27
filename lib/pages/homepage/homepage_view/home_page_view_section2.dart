import 'package:flutter/material.dart';
import 'package:jobfinder/utils/custom_widget.dart';

class HomePageViewSection2 extends StatelessWidget {
  const HomePageViewSection2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      sliver: SliverToBoxAdapter(
        child: indent(
          35.0,
          0,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 40),
            decoration: BoxDecoration(
                color: Color(0xFFFFCD9A),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Remainder",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                      Text(
                        "19:30 AM",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Interview at zoom in 2 hour.",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
