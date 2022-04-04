import 'package:dartz/dartz.dart';

import 'package:movieapp/core/domain/services/http_service.dart';
import 'package:movieapp/features/movie/domain/entities/movie_entity.dart';

import '../../../../../core/utils/apis_utils.dart';
import '../../dtos/movie_dto.dart';
import '../get_movies_datasource.dart';

class GetMoviesRemoteDatasourceImp implements GetMoviesDataSource {
  final HttpService httpService;
  GetMoviesRemoteDatasourceImp({
    required this.httpService,
  });

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      var response = httpService.get(API.REQUEST_MOVIE_LIST);
      return Right(MovieDto.fromJson(response.data));
    } catch (e) {
      return Left(Exception('Falha no datasource remoto'));
    }
  }
}
