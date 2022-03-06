import 'package:netflix_clone_fiap/data/usecases/home/remote_fetch_movie.dart';
import 'package:netflix_clone_fiap/main/factories/infra/http_client_factory.dart';

RemoteFetchMovie makeRemoteFetchMovie() =>
    RemoteFetchMovie(httpClient: makeHttpClient());
