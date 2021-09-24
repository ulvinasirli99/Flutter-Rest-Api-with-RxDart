import 'package:api_reactive_dart/constant/strings.dart';
import 'package:api_reactive_dart/handle/error_handle.dart';
import 'package:api_reactive_dart/interceptor/logging_interceptor.dart';
import 'package:api_reactive_dart/response/g.response.dart';
import 'package:dio/dio.dart';

class UserApiProvider {
  late Dio _dio;

  UserApiProvider() {
    BaseOptions options =
        BaseOptions(receiveTimeout: 5000, connectTimeout: 5000);
    _dio = Dio(options);
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<UserResponse?> getUser() async {
    try {
      Response response = await _dio.get(endpoint);
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return null;
    }
  }
}
