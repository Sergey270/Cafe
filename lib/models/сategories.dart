
import 'package:json_annotation/json_annotation.dart';
part 'сategories.g.dart';


@JsonSerializable()
class Categories {
  String? id;
  String? name;
  String? image_url;


  Categories({
    required this.id,
    required this.name,
    required this.image_url,
  });

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}