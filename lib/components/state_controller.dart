import 'package:api_with_flutter_river/model/photo-model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:api_with_flutter_river/services/network_request.dart';

final photoState = FutureProvider<List<PhotoModel>>((ref) async{
  return FetchPhotos();
}
