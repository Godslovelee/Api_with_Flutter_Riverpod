import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:api_with_flutter_river/model/photo-model.dart';

List<PhotoModel> parse_photo(String responseData) {
  var list = json.decode(responseData) as List<dynamic>;
  List<PhotoModel> photos = list.map((e) => PhotoModel.fromJson(e)).toList();

  return photos;
}

Future<List<PhotoModel>> fetchPhotos()async{
  final response = await http.get(Uri.parse("http://jsonplaceholder.typicode.com/photos"));
  if(response.statusCode==200){
    return compute(parse_photo, response.body);
  }
  throw Exception(
    "Can\'t get Photoeeqwqeeseesseeeee"
  );




}
