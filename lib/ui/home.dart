import 'package:riverpod/riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api_with_flutter_river/components/state_controller.dart';
import 'package:api_with_flutter_river/model/photo-model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget{
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<PhotoModel>>photos = watch(photoState);
    return null;
  }
  }