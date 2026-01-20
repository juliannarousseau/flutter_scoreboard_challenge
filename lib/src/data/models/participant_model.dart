import 'package:flutter_scoreboard_challenge/src/domain/entities/participant_entity.dart';

class ParticipantModel {
  final int id;
  final String name;
  final int score;

  const ParticipantModel({
    required this.id,
    required this.name,
    required this.score,
  });

  factory ParticipantModel.fromJson(Map<String, dynamic> json) {
    return ParticipantModel(
      id: json['id'] ?? -1,
      name: json['name'] ?? '',
      score: json['score'] ?? 0,
    );
  }

  factory ParticipantModel.fromEntity(ParticipantEntity entity) {
    return ParticipantModel(
      id: entity.id,
      name: entity.name,
      score: entity.score,
    );
  }

  ParticipantEntity toEntity() {
    return ParticipantEntity(
      id: id,
      name: name,
      score: score,
    );
  }
}
