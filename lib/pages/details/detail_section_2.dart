import 'package:flutter/material.dart';
import 'package:jobfinder/model/job_model.dart';
import 'package:jobfinder/utils/custom_icons_icons.dart';

class DetailSection2 extends StatelessWidget {
  const DetailSection2({
    Key? key,
    required this.jobsModel,
  }) : super(key: key);

  final JobsModel jobsModel;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 35.0),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)),
              child: Image.asset(
                jobsModel.imgUrl,
                height: 60,
                width: 60,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobsModel.title,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 4),
                  Text(
                    jobsModel.role,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    jobsModel.location,
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            Icon(jobsModel.title != 'Behance'
                ? CustomIcons.selected_bookmark
                : CustomIcons.bookmark)
          ],
        ),
      ),
    );
  }
}
