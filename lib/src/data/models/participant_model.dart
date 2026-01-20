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
}
