import 'package:flutter/material.dart';
import 'package:jobfinder/model/job_model.dart';

class DetailSection4 extends StatelessWidget {
  const DetailSection4({
    Key? key,
    required this.jobsModel,
  }) : super(key: key);

  final JobsModel jobsModel;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35.0),
      sliver: SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(13.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Text(
                      "Experience",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 15),
                    Text(
                      jobsModel.experince,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                color: Colors.grey,
                height: 60,
                width: 1.0,
              ),
              Spacer(),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      "Job Type",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 15),
                    Text(
                      jobsModel.jobType,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                color: Colors.grey,
                height: 60,
                width: 1.0,
              ),
              Spacer(),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Text(
                      "Level",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 15),
                    Text(
                      jobsModel.level,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
