import 'package:api_reactive_dart/model/gender.dart';

class UserResponse {
  final List<User> results;

  final String error;

  UserResponse(this.results, this.error);

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        List<User>.from(json["results"].map((x)=>User.fromJson(x))),
        "",
      );



}
