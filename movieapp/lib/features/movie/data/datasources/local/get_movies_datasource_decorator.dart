import 'package:movieapp/features/movie/domain/entities/movie_entity.dart';

import 'package:dartz/dartz.dart';

import '../get_movies_datasource.dart';

class GetMoviesDataSourceDecorator implements GetMoviesDataSource {
  final GetMoviesDataSource getMoviesDataSource;

  GetMoviesDataSourceDecorator(this.getMoviesDataSource);

  @override
  Future<Either<Exception, MovieEntity>> call() => getMoviesDataSource();
}
