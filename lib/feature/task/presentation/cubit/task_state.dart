import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial({
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
