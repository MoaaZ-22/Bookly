import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'http://www.googleapis.com/book/v1/';
  late final Dio _dio;
  ApiService(Dio dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
