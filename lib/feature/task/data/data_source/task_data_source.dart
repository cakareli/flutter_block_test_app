import 'package:flutter_block_test_app/feature/task/data/model/task_model.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

abstract class TaskDataSource {
  Future<List<TaskEntity>> getAllTasks();
  Future<void> addTask();
  Future<void> removeTask({required int taskId});
}

@LazySingleton(as: TaskDataSource)
class TaskDataSourceImpl implements TaskDataSource {
  @override
  Future<List<TaskEntity>> getAllTasks() async {
    // api fetch
    try {
      await Future.delayed(const Duration(seconds: 1));
      List<TaskEntity> entities = [];
      for (var taskModel in taskModels) {
        entities.add(taskModel.toEntity());
      }
      return entities;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addTask() {
    // TODO: implement addTask
    throw UnimplementedError();
  }

  @override
  Future<void> removeTask({required int taskId}) {
    // TODO: implement removeTask
    throw UnimplementedError();
  }
}

var uuid = const Uuid();

List<TaskModel> taskModels = [
  TaskModel(
    id: uuid.v4(),
    name: 'Implement Login Screen',
    description: 'Develop the UI and backend integration for the login screen.',
    createdAt: DateTime.now(),
  ),
  TaskModel(
    id: uuid.v4(),
    name: 'Set Up CI/CD Pipeline',
    description:
        'Integrate continuous integration and delivery pipeline using GitHub Actions.',
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  TaskModel(
    id: uuid.v4(),
    name: 'Write Unit Tests for Authentication',
    description:
        'Create unit tests for the authentication logic using the bloc_test package.',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
  ),
  TaskModel(
    id: uuid.v4(),
    name: 'Optimize Database Queries',
    description:
        'Refactor the queries to improve the app performance on slow networks.',
    createdAt: DateTime.now().subtract(const Duration(hours: 5)),
  ),
  TaskModel(
    id: uuid.v4(),
    name: 'Design Notification System',
    description: 'Implement Firebase Push Notifications for the app.',
    createdAt: DateTime.now().subtract(const Duration(days: 7, hours: 2)),
  )
];
