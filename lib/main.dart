import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'home/home_page.dart';

void main() {
  runApp(Sizer(
    builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomePage(),
      );
    },
  ));
}
