import 'package:get/get.dart';
import 'package:netflix_clone_fiap/domain/usecases/signup/register_with_email.dart';
import 'package:netflix_clone_fiap/ui/home/home_screen.dart';

class SignUpPresenter extends GetxController {
  SignUpPresenter({
    required this.registerWithEmail,
  });

  RegisterWithEmail registerWithEmail;

  RxBool showEmailInvalid = false.obs;
  RxBool showPasswordInvalid = false.obs;
  RxBool signUpButtonIsEnabled = false.obs;
  RxBool showSignUpFailed = false.obs;

  String _email = '';
  String _password = '';

  void onEmailChanged(String email) {
    _email = email;
    _checkEmailAndPassword();
  }

  void onPasswordChanged(String password) {
    _password = password;
    _checkEmailAndPassword();
  }

  void _checkEmailAndPassword() {
    final isEmailValid = GetUtils.isEmail(_email);
    final isPasswordValid = _password.length > 5;

    showEmailInvalid.value = !isEmailValid;
    showPasswordInvalid.value = !isPasswordValid;

    signUpButtonIsEnabled.value = isEmailValid && isPasswordValid;
  }

  void onSignUp() async {
    var user =
        await registerWithEmail.execute(email: _email, password: _password);

    if (user != null) {
      Get.offAndToNamed(HomeScreen.id);
    } else {
      showSignUpFailed.value = true;
    }
  }
}
