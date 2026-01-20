class ParticipantEntity {
  final int id;
  final String name;
  final int score;

  const ParticipantEntity({
    required this.id,
    required this.name,
    required this.score,
  });

  ParticipantEntity copyWith({
    int? id,
    String? name,
    int? score,
  }) {
    return ParticipantEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      score: score ?? this.score,
    );
  }
}
