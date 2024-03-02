import 'package:darshan_jethva_prac/controller/toprated.dart';
import 'package:darshan_jethva_prac/view/home/detailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TopRated extends StatefulWidget {
  const TopRated({super.key});

  @override
  State<TopRated> createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated> {
  @override
  Widget build(BuildContext context) {
    final get = Get.put(TopRatedController());

      return Obx(() => get.topRatedlist.isEmpty?const Center(child: Text("No Data Found"),):GridView.builder(itemCount: get.topRatedlist.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,childAspectRatio: 1,crossAxisSpacing: 8,mainAxisSpacing: 8
    ), itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
        
          Get.to(DetailsScreen(results: get.topRatedlist[index],));
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
            Text(maxLines: 1,overflow: TextOverflow.ellipsis,"${get.topRatedlist[index].title}",style: const TextStyle(color: Colors.black),).paddingSymmetric(horizontal: 10)
          ],
        ),
      );
    },));
  }
}
