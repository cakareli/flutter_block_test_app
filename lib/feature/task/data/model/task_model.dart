import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

/// Model representing the raw data (e.g., from API or DB).
@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int id,
    required String name,
    required String description,
    required DateTime createdAt,
  }) = _TaskModel;

  /// Factory for creating a Model from JSON.
  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

/// Extension for implementing the conversion logic.
extension TaskModelExtension on TaskModel {
  /// Convert the Model to an Entity.
  TaskEntity toEntity() {
    return TaskEntity(
      id: id,
      name: name,
      description: description,
      createdAt: createdAt,
    );
  }

  /// Create a Model from an Entity.
  static TaskModel fromEntity(TaskEntity entity) {
    return TaskModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      createdAt: entity.createdAt,
    );
  }
}
