
import 'package:get/get.dart';

import '../model/populardata.dart';
import '../service/get/toprated.dart';

class TopRatedController extends GetxController{
  RxList<Results> topRatedlist = <Results>[].obs;
  Future<void> getTopRateddata ()async{
    try{
      final res = await TopRatedService().getTopRateddata();
      if(res.results!.isNotEmpty){
        topRatedlist.value = res.results!;
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
    getTopRateddata();
    // TODO: implement onInit
    super.onInit();
  }
}