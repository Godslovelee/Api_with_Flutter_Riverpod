
import 'dart:convert';
import 'package:api_with_flutter_river/model/photo-model.dart';
List<PhotoModel>parsephoto(String responseData){
    var list = json.decode(responseData) as List<dynamic>;
}