import 'package:movieapp/features/movie/domain/entities/movie_details_entity.dart';

class MovieEntity {
  MovieEntity({
    required this.averageRating,
    required this.backdropPath,
    required this.description,
    required this.id,
    required this.iso_3166_1,
    required this.iso_639_1,
    required this.name,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.listMovies,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });

  late final double averageRating;
  late final String backdropPath;
  late final String description;
  late final int id;
  late final String iso_3166_1;
  late final String iso_639_1;
  late final String name;
  late final int page;
  late final String posterPath;
  late final bool public;
  late final List<MovieDetailsEntity> listMovies;
  late final int revenue;
  late final int runtime;
  late final String sortBy;
  late final int totalPages;
  late final int totalResults;

  @override
  String toString() {
    return 'MovieEntity(averageRating: $averageRating, backdropPath: $backdropPath, description: $description, id: $id, iso_3166_1: $iso_3166_1, iso_639_1: $iso_639_1, name: $name, page: $page, posterPath: $posterPath, public: $public, listMovies: $listMovies, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalResults: $totalResults)';
  }
}
