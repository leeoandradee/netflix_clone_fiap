import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone_fiap/main/factories/pages/home/home_screen_factory.dart';
import 'package:netflix_clone_fiap/main/factories/pages/login/login_screen_factory.dart';
import 'package:netflix_clone_fiap/main/factories/pages/signup/signup_screen_factory.dart';
import 'package:netflix_clone_fiap/main/factories/pages/splash/splash_screen_factory.dart';
import 'package:netflix_clone_fiap/ui/home/home_screen.dart';
import 'package:netflix_clone_fiap/ui/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:netflix_clone_fiap/ui/signup/signup_screen.dart';
import 'package:netflix_clone_fiap/ui/splash/splash_screen.dart';
import 'package:netflix_clone_fiap/utils/strings/string_resource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  R.load();
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
      initialRoute: SplashScreen.id,
      getPages: [
        GetPage(name: SplashScreen.id, page: makeSplashScreen),
        GetPage(name: LoginScreen.id, page: makeLoginScreen),
        GetPage(name: SignUpScreen.id, page: makeSignUpScreen),
        GetPage(name: HomeScreen.id, page: makeHomeScreen),
      ],
    );
  }
}
