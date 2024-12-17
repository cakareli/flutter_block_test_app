import 'package:dartz/dartz.dart';
import 'package:flutter_block_test_app/core/network/failures.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:flutter_block_test_app/feature/task_list/data/data_sources/task_list_data_source.dart';
import 'package:flutter_block_test_app/feature/task_list/domain/repository/task_list_repository.dart';
import 'package:injectable/injectable.dart';

@Named('TaskListRepository')
@LazySingleton(as: TaskListRepository)
class TaskListRepositoryImpl implements TaskListRepository {
  final TaskListDataSource taskListDataSource;

  TaskListRepositoryImpl(this.taskListDataSource);
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
