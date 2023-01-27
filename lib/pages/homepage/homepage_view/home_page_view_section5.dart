import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobfinder/model/job_model.dart';
import 'package:jobfinder/utils/custom_icons_icons.dart';
import 'package:jobfinder/utils/custom_widget.dart';
import 'package:jobfinder/utils/magic_string.dart';

class HomePageViewSection5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: jobModel.length,
          (context, index) {
        return InkWell(
          onTap: () {
            context.pushNamed(RouteNames.detailPage, extra: jobModel[index]);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: customContainers(jobModel[index], size),
          ),
        );
      }),
    );
  }

  Widget customContainers(JobsModel jobsModel, Size size) {
    return indent(
      35,
      0,
      Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(12)),
                    child:
                        Image.asset(jobsModel.imgUrl, height: 60, width: 60)),
                Spacer(),
                Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobsModel.title,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        jobsModel.role,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        jobsModel.location,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(jobsModel.title != 'Behance'
                        ? CustomIcons.selected_bookmark
                        : CustomIcons.bookmark))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.start,
                children: jobsModel.jobOverSite
                    .map(
                      (i) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 240, 238, 238),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            i,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              jobsModel.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
