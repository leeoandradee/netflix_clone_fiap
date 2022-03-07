import 'package:get/get.dart';
import 'package:netflix_clone_fiap/domain/usecases/logged/logged_in.dart';
import 'package:netflix_clone_fiap/ui/home/home_screen.dart';
import 'package:netflix_clone_fiap/ui/login/login_screen.dart';

class SplashPresenter extends GetxController {
  SplashPresenter({required this.loggedIn});

  LoggedIn loggedIn;

  @override
  void onReady() async {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      var user = loggedIn.execute();
      if (user != null) {
        Get.offAndToNamed(HomeScreen.id);
      } else {
        Get.offAndToNamed(LoginScreen.id);
      }
    });
  }
}
