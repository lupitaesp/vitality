import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vitality/login/login.dart';
import 'package:vitality/principal.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static String get title => 'MainPage';
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSingInProvider(),
        child: const MaterialApp(
           debugShowCheckedModeBanner: false,
          home: Principal()
  ),
  );
}