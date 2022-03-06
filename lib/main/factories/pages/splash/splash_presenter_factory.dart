import 'package:netflix_clone_fiap/main/factories/usecases/logged/remote_logged_in_factory.dart';
import 'package:netflix_clone_fiap/presentation/splash/splash_presenter.dart';

SplashPresenter makeSplashPresenter() => SplashPresenter(
      loggedIn: makeRemoteLoggedIn(),
    );
