import 'package:netflix_clone_fiap/data/http/http_client.dart';
import 'package:netflix_clone_fiap/data/usecases/models/movie_model.dart';
import 'package:netflix_clone_fiap/domain/entities/movie_entity.dart';
import 'package:netflix_clone_fiap/domain/usecases/movie/fetch_movie.dart';

class RemoteFetchMovie extends FetchMovie {
  RemoteFetchMovie({
    required this.httpClient,
  });

  HttpClient httpClient;

  static const apiEnpoint = 'https://api.themoviedb.org/3';
  static const credential = '?api_key=ad734b64236a8e4c90f4a596639f1b8c';

  @override
  Future<List<MovieEntity>> popularExecute() async {
    final response =
        await httpClient.get(url: apiEnpoint + '/movie/popular' + credential);

    return response['results']
        .map<MovieEntity>(
            (movieJson) => MovieModel.fromJson(movieJson).toEntity())
        .toList();
  }

  @override
  Future<List<MovieEntity>> topRatedExecute() async {
    final response =
        await httpClient.get(url: apiEnpoint + '/movie/top_rated' + credential);

    return response['results']
        .map<MovieEntity>(
            (movieJson) => MovieModel.fromJson(movieJson).toEntity())
        .toList();
  }

  @override
  Future<List<MovieEntity>> upcomingExecute() async {
    final response =
        await httpClient.get(url: apiEnpoint + '/movie/upcoming' + credential);

    return response['results']
        .map<MovieEntity>(
            (movieJson) => MovieModel.fromJson(movieJson).toEntity())
        .toList();
  }
}
