import 'package:netflix_clone_fiap/main/factories/usecases/login/remote_register_with_email_factory.dart';
import 'package:netflix_clone_fiap/presentation/signup/signup_presenter.dart';

SignUpPresenter makeSignUpPresenter() => SignUpPresenter(
      registerWithEmail: makeRemoteRegisterWithEmail(),
    );
