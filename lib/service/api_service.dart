import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/сategories.dart';

part 'api_service.g.dart';



@RestApi(baseUrl: "https://run.mocky.io/v3/")
 abstract class ApiService{
  factory ApiService(Dio dio) = _ApiService;

  @GET("058729bd-1402-4578-88de-265481fd7d54")
  Future <List<Categories>> getCategories();

}