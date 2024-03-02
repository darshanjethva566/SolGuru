import 'package:darshan_jethva_prac/controller/popular.dart';
import 'package:darshan_jethva_prac/view/home/detailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  final get = Get.put(PopularController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => get.popularlist.isEmpty?const Center(child: Text("No Data Found"),):GridView.builder(itemCount: get.popularlist.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,childAspectRatio: 1,crossAxisSpacing: 8,mainAxisSpacing: 8
    ), itemBuilder: (context, index) {
      return InkWell(
        onTap: () {

          Get.to(DetailsScreen(results: get.popularlist[index],));
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
            Text(maxLines: 1,overflow: TextOverflow.ellipsis,"${get.popularlist[index].title}",style: const TextStyle(color: Colors.black),).paddingSymmetric(horizontal: 10)
          ],
        ),
      );
    },));
  }
}
