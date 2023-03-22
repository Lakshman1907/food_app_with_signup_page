import 'package:flutter/material.dart';
import 'package:sample_project/detail_page.dart';
import 'package:sample_project/dimensions.dart';
import 'package:sample_project/sign_up.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SignUpScreen(),
    );
  }
}
