import 'package:dartz/dartz.dart';
import 'package:flutter_block_test_app/core/network/failures.dart';
import 'package:flutter_block_test_app/feature/login/data/data_sources/login_data_source.dart';
import 'package:flutter_block_test_app/feature/login/domain/repository/login_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource loginDataSource;

  LoginRepositoryImpl(this.loginDataSource);

  @override
  Future<Either<Failure, void>> login(
      {required String username, required String password}) async {
    try {
      await loginDataSource.login(username: username, password: password);
      return const Right(null);
    } catch (e) {
      return Left(UnauthorizedFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await loginDataSource.logout();
      return const Right(null);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }
}
