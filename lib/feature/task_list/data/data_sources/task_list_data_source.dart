import 'package:flutter_block_test_app/feature/task/data/model/task_model.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:injectable/injectable.dart';

abstract class TaskListDataSource {
  Future<List<TaskEntity>> getAllTasks();
}

@LazySingleton(as: TaskListDataSource)
class TaskListDataSourceImpl implements TaskListDataSource {
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
}

List<TaskModel> taskModels = [
  TaskModel(
    id: 1,
    name: 'Implement Login Screen',
    description: 'Develop the UI and backend integration for the login screen.',
    createdAt: DateTime.now(),
  ),
  TaskModel(
    id: 2,
    name: 'Set Up CI/CD Pipeline',
    description:
        'Integrate continuous integration and delivery pipeline using GitHub Actions.',
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  TaskModel(
    id: 3,
    name: 'Write Unit Tests for Authentication',
    description:
        'Create unit tests for the authentication logic using the bloc_test package.',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
  ),
  TaskModel(
    id: 4,
    name: 'Optimize Database Queries',
    description:
        'Refactor the queries to improve the app performance on slow networks.',
    createdAt: DateTime.now().subtract(const Duration(hours: 5)),
  ),
  TaskModel(
    id: 5,
    name: 'Design Notification System',
    description: 'Implement Firebase Push Notifications for the app.',
    createdAt: DateTime.now().subtract(const Duration(days: 7, hours: 2)),
  )
];
