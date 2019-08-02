import 'package:dio/dio.dart';
import 'dart:async';

import 'package:fluxir/models/accounts/user_model.dart';

class UserService {
  static BaseOptions options = BaseOptions(
    baseUrl: "http://localhost:4000/api",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  Dio dio;

  UserService() {
    dio = Dio(options);
  }

  Future<List<UserModel>> listUsers() async {
    Response response = await dio.get("/users");

    return List<UserModel>.from(
        response.data.map((userJson) => UserModel.fromJson(userJson)));
  }
}
