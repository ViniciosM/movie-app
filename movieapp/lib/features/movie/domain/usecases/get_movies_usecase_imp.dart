import 'package:movieapp/features/movie/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:movieapp/features/movie/domain/usecases/get_movies_usecase.dart';

import '../repositories/get_movies_repository.dart';

class GetMoviesUsecaseImp implements GetMoviesUseCase {
  final GetMoviesRepository _getMoviesRepository;

  GetMoviesUsecaseImp(this._getMoviesRepository);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    return await _getMoviesRepository();
  }
}
