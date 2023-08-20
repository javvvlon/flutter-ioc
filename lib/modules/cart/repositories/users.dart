import 'dart:convert';

import 'package:http/http.dart';
import 'package:rel/modules/cart/models/user.model.dart';
import 'package:rel/shared/abstract/repository.abstract.dart';
import 'package:rel/shared/services/connector.service.dart';

abstract class IUserRepository {
  Future<void> getUsers();
}

class UsersRepository extends Repository<User> implements IUserRepository {
  @override
  Future<List<User>> getUsers() async {
    Response response = await connector.call(RequestType.GET, 'users');

    return (jsonDecode(response.body) as List)
        .map((e) => User.fromJson(e))
        .toList();
  }
}
