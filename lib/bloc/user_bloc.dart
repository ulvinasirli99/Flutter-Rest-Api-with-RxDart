import 'package:api_reactive_dart/repository/user_repository.dart';
import 'package:api_reactive_dart/response/g.response.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc {
 
  final UserRepository _repository = UserRepository();
 
  final BehaviorSubject<UserResponse> _subject =
 
      BehaviorSubject<UserResponse>();

  getUser() async {
 
    UserResponse? response = await _repository.getUser();
 
    _subject.sink.add(response!);
 
  }

  dispose() {
 
    _subject.close();
 
  }

  BehaviorSubject<UserResponse> get subject => _subject;
  
}

final bloc = UserBloc();