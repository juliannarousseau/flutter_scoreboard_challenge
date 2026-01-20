import 'package:flutter_scoreboard_challenge/src/domain/repositories/scoreboard_repository_interface.dart';

class AddTaskUsecase {
  final ScoreboardRepositoryInterface _repository;

  const AddTaskUsecase({required ScoreboardRepositoryInterface repository})
    : _repository = repository;
}
