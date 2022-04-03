import 'package:get_it/get_it.dart';
import 'package:movieapp/core/data/services/dio_http_service_imp.dart';
import 'package:movieapp/core/domain/services/http_service.dart';

class Inject {
  static initialize() {
    GetIt getIt = GetIt.instance;

    //core
    getIt.registerLazySingleton<HttpService>(() => DioHttpServiceImp());

    //datasources

    //repositories

    //usecases

    //controllers
  }
}
