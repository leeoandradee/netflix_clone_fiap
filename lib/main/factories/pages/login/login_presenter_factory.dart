import 'package:netflix_clone_fiap/main/factories/usecases/signup/remote_login_with_password_factory.dart';
import 'package:netflix_clone_fiap/presentation/login/login_presenter.dart';

LoginPresenter makeLoginPresenter() => LoginPresenter(
      loginWithEmail: makeRemoteLoginWithEmail(),
    );
