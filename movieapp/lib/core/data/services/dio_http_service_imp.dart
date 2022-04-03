import 'package:dio/dio.dart';
import 'package:movieapp/core/domain/services/http_service.dart';

class DioHttpServiceImp implements HttpService {
  late Dio _dio;

  DioHttpServiceImp() {
    _dio = Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/4/', headers: {
      'content-type': 'abs123',
      'authorization': 'pegar o bearear lá na api',
    }));
  }

  @override
  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters}) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}
