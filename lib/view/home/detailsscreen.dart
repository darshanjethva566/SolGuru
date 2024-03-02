import 'package:darshan_jethva_prac/model/populardata.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/utils.dart';

class DetailsScreen extends StatelessWidget {

  Results results;
  DetailsScreen({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Movie Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100.w,
            width: 100.w,
            child: const Card(
            color: Colors.red,
            ),
          ),
          SizedBox(height: 20.h,),

          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popularity : ${results.popularity} , "),
                Text("Movie : ${results.originalTitle} , "),
                Text("Vots : ${results.voteCount} , "),
              ],
            ),
          ),
          SizedBox(height: 20.h,),

          Text("OverView : ${results.overview} ")

        ],
      ).paddingAll(20),
    );
  }
}
