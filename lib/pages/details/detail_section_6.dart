import 'package:flutter/material.dart';
import 'package:jobfinder/model/job_model.dart';

class DetailSection6 extends StatelessWidget {
  const DetailSection6({
    Key? key,
    required this.jobsModel,
  }) : super(key: key);

  final JobsModel jobsModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: jobsModel.requirment.length,
        (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 35.0),
            child: Row(
              children: [
                Text(
                  "#",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
                SizedBox(width: 15),
                Text(
                  jobsModel.requirment[index],
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
