import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'cafe_repository.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class CafeApiService {
  factory CafeApiService(Dio dio, {String baseUrl}) = _CafeApiService;

  @GET("/tasks")
  Future<HttpResponse<List<Categories>>> getCategories(

      );

  @GET("/aba7ecaa-0a70-453b-b62d-0e326c859b3b")
  Future<HttpResponse<List<Dishes>>> getDishes();



}

@JsonSerializable()
class Categories {
  String? id;
  String? name;
  String? image_url;


  Categories({this.id, this.name, this.image_url, });

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesToJson(this);


}

@JsonSerializable()
class Dishes {
  String? id;
  String? name;
  String? price;
  String? weight;
  String? description;
  String? image_url;



  Dishes({this.id, this.name, this.image_url, });

  factory Dishes.fromJson(Map<String, dynamic> json) => _$DishesFromJson(json);
  Map<String, dynamic> toJson() => _$DishesToJson(this);

}