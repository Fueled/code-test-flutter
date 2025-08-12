import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_urls_api_model.g.dart';

@JsonSerializable()
class PhotoUrlsApiModel {
  final String full;
  final String thumb;

  factory PhotoUrlsApiModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoUrlsApiModelFromJson(json);

  PhotoUrlsApiModel(
    this.full,
    this.thumb,
  );
}
