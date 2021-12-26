import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:api_with_flutter_river/model/photo-model.dart';

List<PhotoModel> parse_photo(String responseData) {
  var list = json.decode(responseData) as List<dynamic>;
  List<PhotoModel> photos = list.map((e) => PhotoModel.fromJson(e)).toList();

  return photos;
}

Future<List<PhotoModel>> FetchPhotos()async{
  final response = await http.get(url)
      

}
