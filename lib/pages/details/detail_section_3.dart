import 'package:flutter/material.dart';
import 'package:jobfinder/model/job_model.dart';

class DetailSection3 extends StatelessWidget {
  const DetailSection3({
    Key? key,
    required this.jobsModel,
  }) : super(key: key);

  final JobsModel jobsModel;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      sliver: SliverToBoxAdapter(
        child: Wrap(
          children: [
            Text(
              jobsModel.description,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
