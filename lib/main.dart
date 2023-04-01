import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/screen_list.dart';

import 'package:shoppingapp/screens/screen_main_removed_deadscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.blue),
      home: const ScreenList(),
    );
  }
}
