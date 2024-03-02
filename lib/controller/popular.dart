import 'package:darshan_jethva_prac/model/populardata.dart';
import 'package:darshan_jethva_prac/service/get/popular.dart';
import 'package:get/get.dart';

class PopularController extends GetxController{
  RxList<Results> popularlist = <Results>[].obs;
  Future<void> getPopulardata ()async{
    try{
      final res = await PopularService().getPopulardata();
      if(res.results!.isNotEmpty){
        popularlist.value = res.results!;
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
    getPopulardata();
    // TODO: implement onInit
    super.onInit();
  }
}