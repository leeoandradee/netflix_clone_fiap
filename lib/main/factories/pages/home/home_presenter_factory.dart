import 'package:netflix_clone_fiap/main/factories/usecases/home/remote_fetch_movie_factory.dart';
import 'package:netflix_clone_fiap/presentation/home/home_presenter.dart';

HomePresenter makeHomePresenter() =>
    HomePresenter(fetchMovie: makeRemoteFetchMovie());
