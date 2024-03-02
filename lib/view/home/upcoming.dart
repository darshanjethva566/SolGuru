import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/upcoming.dart';
import 'detailsscreen.dart';

class UpComing extends StatefulWidget {
  const UpComing({super.key});

  @override
  State<UpComing> createState() => _UpComingState();
}

class _UpComingState extends State<UpComing> {
  final get = Get.put(UpComingController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => get.upCominglist.isEmpty?const Center(child: Text("No Data Found"),):GridView.builder(itemCount: get.upCominglist.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,childAspectRatio: 1,crossAxisSpacing: 8,mainAxisSpacing: 8
    ), itemBuilder: (context, index) {
      return InkWell(
        onTap: () {

          Get.to(DetailsScreen(results: get.upCominglist[index],));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 150.w,
              width: 150.w,
              child: const Card(
                color: Colors.red,),
            ),
            const SizedBox(height: 5,),
            Text(maxLines: 1,overflow: TextOverflow.ellipsis,"${get.upCominglist[index].title}",style: const TextStyle(color: Colors.black),).paddingSymmetric(horizontal: 10)
          ],
        ),
      );
    },));
  }
}
