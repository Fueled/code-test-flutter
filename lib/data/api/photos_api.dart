import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:code_test_flutter/data/api/entities/photo_api_model.dart';
import 'entities/common.dart';
import 'unsplash_client.dart';

@injectable
class PhotosApi {
  final UnsplashClient _client;

  PhotosApi(this._client);

  Cancellable<List<PhotoApiModel>> getPhotos() {
    final cancelToken = CancelToken();
    final res = _client.getPhotos();
    return Cancellable(res, cancelToken);
  }
}
