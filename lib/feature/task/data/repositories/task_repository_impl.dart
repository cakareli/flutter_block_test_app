import 'package:dartz/dartz.dart';
import 'package:flutter_block_test_app/core/network/failures.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:flutter_block_test_app/feature/task/data/data_source/task_data_source.dart';
import 'package:flutter_block_test_app/feature/task/domain/repository/task_repository.dart';
import 'package:injectable/injectable.dart';

@Named('TaskRepository')
@LazySingleton(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  final TaskDataSource taskListDataSource;

  TaskRepositoryImpl(this.taskListDataSource);
  @override
  Future<Either<Failure, List<TaskEntity>>> getAllTasks() async {
    try {
      final response = await taskListDataSource.getAllTasks();
      return Right(response);
    } catch (e) {
      return Left(UnauthorizedFailure(e.toString()));
    }
  }
}
