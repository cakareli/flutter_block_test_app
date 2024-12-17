import 'package:flutter_block_test_app/feature/app/domain/entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// Model representing the raw data (e.g., from API or DB).
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String firstName,
    required String lastName,
    required String displayName,
    required String role,
    required int age,
    required DateTime createdAt,
  }) = _UserModel;

  /// Factory for creating a Model from JSON.
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

/// Extension for implementing the conversion logic.
extension UserModelExtension on UserModel {
  /// Convert the Model to an Entity.
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      firstName: firstName,
      lastName: lastName,
      displayName: displayName,
      role: role,
      age: age,
      createdAt: createdAt,
    );
  }

  /// Create a Model from an Entity.
  static UserModel fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      firstName: entity.firstName,
      lastName: entity.lastName,
      displayName: entity.displayName,
      role: entity.role,
      age: entity.age,
      createdAt: entity.createdAt,
    );
  }
}
