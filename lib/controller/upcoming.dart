
import 'package:get/get.dart';

import '../model/populardata.dart';
import '../service/get/upcoming.dart';


class UpComingController extends GetxController{
  RxList<Results> upCominglist = <Results>[].obs;
  Future<void> getUpComingdata ()async{
    try{
      final res = await UpComingService().getUpComingdata();
      if(res.results!.isNotEmpty){
        upCominglist.value = res.results!;
      }
      else{
        print('something went wrong');
      }
    }
    catch(e){
      print(e);
    }
  }
  @override
  void onInit() {
    getUpComingdata();
    // TODO: implement onInit
    super.onInit();
  }
}