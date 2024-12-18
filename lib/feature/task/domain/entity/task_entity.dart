import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task_entity.freezed.dart';
part 'task_entity.g.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required String id,
    required String name,
    required String description,
    required DateTime createdAt,
  }) = _TaskEntity;

  factory TaskEntity.fromJson(Map<String, Object?> json) =>
      _$TaskEntityFromJson(json);
}
