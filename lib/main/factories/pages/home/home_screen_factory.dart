import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone_fiap/main/factories/pages/home/home_presenter_factory.dart';
import 'package:netflix_clone_fiap/presentation/home/home_presenter.dart';
import 'package:netflix_clone_fiap/ui/home/home_screen.dart';

Widget makeHomeScreen() {
  Get.put<HomePresenter>(makeHomePresenter());
  return const HomeScreen();
}
