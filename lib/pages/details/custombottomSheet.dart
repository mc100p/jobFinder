import 'package:flutter/material.dart';
import 'package:jobfinder/model/job_model.dart';
import 'package:jobfinder/utils/custom_widget.dart';
import 'package:intl/intl.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({required this.jobsModel});

  final JobsModel jobsModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        // height: size.height * 0.20,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            indent(
              35.0,
              10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: '\$${jobsModel.cost}K'.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        children: [
                          TextSpan(
                              text: " /Year",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 11.5,
                                color: Colors.black,
                              )),
                        ]),
                  ),
                  Text(
                      DateFormat('dd MMMM yyyy').format(
                          DateTime.parse(jobsModel.date.toLocal().toString())),
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.0)),
                ],
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 140),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.black,
              onPressed: () {},
              child: Text(
                "Apply Now",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
