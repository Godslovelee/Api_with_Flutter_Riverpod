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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}
//1234534567777777777777111111111111121111111111111
//11111124444444556666465566665666123ewrweww2324433
class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<PhotoModel>> photos = watch(photoState);
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("API"),
      ),
      body: photos.when(
          data: (photos) {
            return ListView.builder(
                itemCount: photos.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(photos[index].thumbnailUrl),
                        ),
                        title: Text('${photos[index].title}'),
                      )
                    ],
                  );
                });
          },
          loading: () => Center(),
          error: (err, ss) => Center(
                child: Text("cant load"),
              )),
    );
  }
}
