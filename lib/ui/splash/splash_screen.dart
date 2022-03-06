import 'package:flutter/material.dart';
import 'package:netflix_clone_fiap/presentation/splash/splash_presenter.dart';

class SplashScreen extends StatelessWidget {
  static const String id = '/splash_screen';

  const SplashScreen({Key? key, required this.presenter}) : super(key: key);

  final SplashPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/logo.png', width: 300),
        ),
      ),
    );
  }
}
