import 'package:flutter_bloc_clean_architecture/core/utils/typedef.dart';
import 'package:flutter_bloc_clean_architecture/src/authentication/domain/repositories/authentication_repository.dart';

class CreateUser{
  const CreateUser(this._repository);
  final AuthenticationRepository _repository;


  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  }) async => _repository.createUser(createdAt: createdAt, name: name, avatar: avatar);
}