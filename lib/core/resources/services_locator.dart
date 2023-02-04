import 'package:bookly/Features/Home/data/repositories/home_repository.dart';
import 'package:bookly/core/resources/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator{
  void init()
  {
    sl.registerSingleton<ApiService>(ApiService(Dio()));
    sl.registerSingleton<HomeRepository>(HomeRepository(
      sl.get<ApiService>(),
    ));
  }
}