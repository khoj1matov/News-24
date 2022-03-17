import 'package:flutter/material.dart';
import 'package:news24/routes/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoute _myRoute = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _myRoute.onGenerateRoute,
      initialRoute: 'notification',
    );
  }
}