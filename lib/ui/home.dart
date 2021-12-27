import 'package:riverpod/riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api_with_flutter_river/components/state_controller.dart';
import 'package:api_with_flutter_river/model/photo-model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API-CONNECT',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );


  }
}

class MyHomePage extends ConsumerWidget{
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<PhotoModel>>photos = watch(photoState);
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("API"),

      ),
      body: photos.when(data: (photos){
        return ListView.builder(
          itemCount: photos.length,
          itemBuilder: (context, index){
            return Column(
              children: [],
            );
//eeee1234556678912345678912345

          }

        );
      }, loading: () => Center(), error: (err, ss) => Center(
        child: Text("cant load"),
      )),

    );
  }
  }