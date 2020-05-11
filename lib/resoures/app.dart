import 'package:flutter/material.dart';
import 'package:voucherapp/resoures/feature/login/login_view.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }

}