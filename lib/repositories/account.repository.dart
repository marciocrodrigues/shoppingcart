import 'package:dio/dio.dart';
import 'package:shopcart/models/authenticate-user.model.dart';
import 'package:shopcart/models/create-ser.model.dart';
import 'package:shopcart/models/user.model.dart';
import 'package:shopcart/settings.dart';

class AccountRepository {
  Future<UserModel> authenticate(AuthenticateModel model) async {
    var url = "${Settings.apiUrl}v1/account/login";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data);
  }

  Future<UserModel> create(CreateUserModel model) async {
    var url = "${Settings.apiUrl}v1/account";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data);
  }
}