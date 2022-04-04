import 'package:commons/src/domain/repositories/cadaster_repository.dart';

abstract class CadasterUsecase {}

class CadasterUsecaseImpl implements CadasterUsecase {
  final CadasterRepository repository;
  CadasterUsecaseImpl(this.repository);

  
}
