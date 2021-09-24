import 'package:api_reactive_dart/constant/strings.dart';
import 'package:api_reactive_dart/response/g.response.dart';
import 'package:dio/dio.dart';

class UserApiProvider {

  final Dio _dio = Dio();

  Future<UserResponse?> getUser() async {
   
    try {
   
      Response response = await _dio.get(endpoint);
   
     if(response.statusCode==200){

       print("My status Code ::: " + response.statusCode.toString());
     
        return response.data.map<UserResponse>((item)=>UserResponse.fromJson(item)).toList();
     
     }

     return null;
   
    } catch (error, stacktrace) {
   
      print("Exception occured: $error stackTrace: $stacktrace");
   
  
   
    }
  
  }

}
