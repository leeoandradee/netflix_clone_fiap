import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone_fiap/login_screen.dart';
import 'package:netflix_clone_fiap/main/factories/pages/login_presenter_factory.dart';
import 'package:netflix_clone_fiap/main/factories/pages/login_screen_factory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.id,
      getPages: [
        GetPage(name: LoginScreen.id, page: makeLoginScreen),
      ],
    );
  }
}
