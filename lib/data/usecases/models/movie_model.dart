import 'package:netflix_clone_fiap/domain/entities/movie_entity.dart';

class MovieModel {
  MovieModel({
    required this.posterPath,
  });

  String posterPath;

  factory MovieModel.fromJson(Map json) => MovieModel(
        posterPath: json['poster_path'],
      );

  MovieEntity toEntity() => MovieEntity(
        imagePath: posterPath,
      );
}
