import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_test_flutter/data/api/entities/photo_urls_api_model.dart';

part 'photo_api_model.g.dart';

@JsonSerializable()
class PhotoApiModel {
  final String id;
  final String? description;
  final PhotoUrlsApiModel urls;

  factory PhotoApiModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoApiModelFromJson(json);

  PhotoApiModel(
    this.id,
    this.description,
    this.urls,
  );
}
