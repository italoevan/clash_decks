import 'package:commons/src/domain/repositories/cadaster_repository.dart';

import '../datasource/cadaster_datasource.dart';

class CadasterRepositoryImpl implements CadasterRepository {
  final CadasterDatasource cadaster;

  CadasterRepositoryImpl(this.cadaster);
}
