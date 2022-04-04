

import 'package:movieapp/features/movie/domain/entities/movie_entity.dart';

extension MovieDto on MovieEntity {
  Map toJson() {
    return {
      'averageRating': averageRating,
      'backdropPath': backdropPath,
      'description': description,
      'id': id,
      'iso_3166_1': iso_3166_1,
      'iso_639_1': iso_639_1,
      'name': name,
      'page': page,
      'posterPath': posterPath,
      'public': public,
      'listMovies': listMovies,
      'revenue': revenue,
      'runtime': runtime,
      'sortBy': sortBy,
      'totalPages': totalPages,
      'totalResults': totalResults,
    };
  }

  static MovieEntity fromJson(Map json) {
    return MovieEntity(
      averageRating:  json['averageRating'],
      backdropPath:  json['backdropPath'],
      description:  json['description'],
      id:  json['id'],
      iso_3166_1:  json['iso_3166_1'],
      iso_639_1:  json['iso_639_1'],
      name:  json['name'],
      page:  json['page'],
      posterPath:  json['posterPath'],
      public:  json['public'],
      listMovies:  json['listMovies'],
      revenue:  json['revenue'],
      runtime:  json['runtime'],
      sortBy:  json['sortBy'],
      totalPages:  json['totalPages'],
      totalResults:  json['totalResults'],
    );
  }
}