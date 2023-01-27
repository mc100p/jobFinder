import 'package:flutter/material.dart';
import 'package:jobfinder/utils/magic_string.dart';

class ProfileSection6 extends StatelessWidget {
  const ProfileSection6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      sliver: SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 238, 238, 238),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 228, 228, 228),
                ),
                child: Image.asset(
                  ImageNames.behance,
                  height: 50,
                  width: 50,
                ),
              ),
              Spacer(),
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Behance"),
                    SizedBox(height: 5),
                    Text(
                      "Junior UI Designer",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Surabaya Indonesia - Onsite",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w200),
                    )
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 228, 228, 228),
                  ),
                  child: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
      ),
    );
  }
}
