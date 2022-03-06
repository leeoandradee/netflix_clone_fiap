import 'package:flutter/material.dart';
import 'package:netflix_clone_fiap/main/factories/pages/splash/splash_presenter_factory.dart';
import 'package:netflix_clone_fiap/ui/splash/splash_screen.dart';

Widget makeSplashScreen() => SplashScreen(
      presenter: makeSplashPresenter(),
    );
