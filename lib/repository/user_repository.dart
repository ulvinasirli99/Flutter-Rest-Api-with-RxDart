import 'package:api_reactive_dart/dio/api_provider.dart';
import 'package:api_reactive_dart/response/g.response.dart';

class UserRepository {
 
  UserApiProvider _apiProvider = UserApiProvider();

  Future<UserResponse?> getUser() {
 
    return _apiProvider.getUser();
 
  }

}
