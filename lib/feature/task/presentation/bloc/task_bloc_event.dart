import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_state.dart';

part 'task_bloc_event.freezed.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.initTasks() = InitTasks;
  const factory TaskEvent.selectTask(TaskEntity task) = SelectTask;
  const factory TaskEvent.addTask() = AddTask;
  const factory TaskEvent.removeTask(String taskId) = RemoveTask;
  const factory TaskEvent.authStateChanged(LoginStatus authStatus) =
      AuthStateChanged;
}
