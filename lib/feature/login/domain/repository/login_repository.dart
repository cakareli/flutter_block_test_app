import 'package:dartz/dartz.dart';
import 'package:flutter_block_test_app/core/network/failures.dart';

abstract class LoginRepository {
  Future<Either<Failure, String?>> checkAuth();
  Future<Either<Failure, void>> login(
      {required String username, required String password});
  Future<Either<Failure, void>> logout();
}
