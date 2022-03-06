import 'package:flutter/cupertino.dart';
import 'package:netflix_clone_fiap/main/factories/pages/signup/signup_presenter_factory.dart';
import 'package:netflix_clone_fiap/ui/signup/signup_screen.dart';
import 'package:flutter/material.dart';

Widget makeSignUpScreen() => SignUpScreen(
      presenter: makeSignUpPresenter(),
    );
