import 'package:dartz/dartz.dart';
import 'package:flutter_block_test_app/core/network/failures.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';

abstract class TaskListRepository {
  Future<Either<Failure, List<TaskEntity>>> getAllTasks();
}
