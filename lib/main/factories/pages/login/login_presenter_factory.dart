import 'package:netflix_clone_fiap/main/factories/usecases/login/remote_login_with_password_factory.dart';
import 'package:netflix_clone_fiap/main/factories/usecases/login/remote_register_with_email_factory.dart';
import 'package:netflix_clone_fiap/presentation/login/login_presenter.dart';

LoginPresenter makeLoginPresenter() => LoginPresenter(
      registerWithEmail: makeRemoteRegisterWithEmail(),
      loginWithEmail: makeRemoteLoginWithEmail(),
    );
