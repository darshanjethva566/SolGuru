import 'package:dio/dio.dart';

import '../../model/populardata.dart';

class UpComingService {
  Dio dio = Dio();

  Future<PopularModel> getUpComingdata()async{
    final res =  await dio.get('https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1',options: Options(
        headers: {
          'authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjMDA4MDM1ZjM1NzVjM2YzZDkyYzNlMmNmNDBjMzQ1NyIsInN1YiI6IjY1ZDhjMWM1MWJmODc2MDE4N2JmYzNjNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.TAOd6nw-rHRPvOd_y5y3ajnSEtE5WxQhyMfc5UeOTvU'
        }
    ));
    return PopularModel.fromJson(res.data);
  }
}