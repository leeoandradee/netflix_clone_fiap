import 'package:flutter/material.dart';
import 'package:netflix_clone_fiap/login_screen.dart';
import 'package:netflix_clone_fiap/main/factories/pages/login_presenter_factory.dart';

Widget makeLoginScreen() => LoginScreen(
      presenter: makeLoginPresenter(),
    );
