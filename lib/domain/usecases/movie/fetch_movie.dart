import 'package:netflix_clone_fiap/domain/entities/movie_entity.dart';

abstract class FetchMovie {
  Future<List<MovieEntity>> popularExecute();
  Future<List<MovieEntity>> topRatedExecute();
  Future<List<MovieEntity>> upcomingExecute();
}
