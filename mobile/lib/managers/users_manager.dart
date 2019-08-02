import 'package:fluxir/models/accounts/user_model.dart';
import 'package:fluxir/services/user_service.dart';

import 'package:rxdart/rxdart.dart';

class UsersManager {
  UserService _service = UserService();

  final BehaviorSubject<List<UserModel>> _usersSubject =
      BehaviorSubject<List<UserModel>>.seeded([]);

  Observable<List<UserModel>> get users$ => _usersSubject.stream;

  UsersManager();

  listUsers() async {
    List<UserModel> response = await _service.listUsers();
    _usersSubject.sink.add(response);
  }

  dispose() {
    _usersSubject.close();
  }
}
