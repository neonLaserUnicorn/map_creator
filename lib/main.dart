import 'package:flutter/material.dart';
import 'package:map_creator/map.dart';

import 'menu/menu.dart';

void main() {
  runApp( MaterialApp(
    routes:{
      '/': (context)=>const MenuWidget(),
      '/map': (context) => const MapWidget(),
    },
    initialRoute: '/',
    //home: MenuWidget(),
    ));
}
