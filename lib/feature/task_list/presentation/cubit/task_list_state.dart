import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_list_state.freezed.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState.initial({
    @Default(DataLoadingStatus.initial) DataLoadingStatus dataLoadingStatus,
    @Default([]) List<TaskEntity> tasks,
  }) = _Initial;
}

enum DataLoadingStatus {
  initial,
  loading,
  success,
  failure,
}
