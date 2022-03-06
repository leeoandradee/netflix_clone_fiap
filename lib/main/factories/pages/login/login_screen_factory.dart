import 'package:flutter/material.dart';
import 'package:netflix_clone_fiap/main/factories/pages/login/login_presenter_factory.dart';
import 'package:netflix_clone_fiap/ui/login/login_screen.dart';

Widget makeLoginScreen() => LoginScreen(
      presenter: makeLoginPresenter(),
    );
