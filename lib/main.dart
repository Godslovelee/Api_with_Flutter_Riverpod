import 'package:api_with_flutter_river/components/state_controller.dart';
import 'package:api_with_flutter_river/model/photo-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:api_with_flutter_river/services/network_request.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    throw UnimplementedError();
  }
  }

  class MyHomePage extends ConsumerWidget{
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<PhotoModel>>photos = watch(photoState);
    return ;


  }

  }
