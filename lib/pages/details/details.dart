import 'package:flutter/material.dart';
import 'package:jobfinder/model/job_model.dart';
import 'package:jobfinder/pages/details/custombottomSheet.dart';
import 'package:jobfinder/pages/details/detail_section_1.dart';
import 'package:jobfinder/pages/details/detail_section_2.dart';
import 'package:jobfinder/pages/details/detail_section_3.dart';
import 'package:jobfinder/pages/details/detail_section_4.dart';
import 'package:jobfinder/pages/details/detail_section_5.dart';
import 'package:jobfinder/pages/details/detail_section_6.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({required this.jobsModel});
  final JobsModel jobsModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomBottomSheet(jobsModel: jobsModel),
      backgroundColor: Color.fromARGB(255, 245, 243, 243),
      body: Container(
        height: size.height,
        child: CustomScrollView(
          slivers: [
            SliverPadding(padding: const EdgeInsets.symmetric(vertical: 50)),
            DetailSection1(),
            DetailSection2(jobsModel: jobsModel),
            DetailSection3(jobsModel: jobsModel),
            DetailSection4(jobsModel: jobsModel),
            DetailSection5(),
            DetailSection6(jobsModel: jobsModel),
            SliverPadding(padding: const EdgeInsets.symmetric(vertical: 80.0)),
          ],
        ),
      ),
    );
  }
}
