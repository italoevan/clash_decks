import 'package:commons/src/domain/repositories/cadaster_repository.dart';
import 'package:commons_dependencies/commons_dependencies.dart';

import '../../domain/entities/user.dart' as user;
import '../datasource/cadaster_datasource.dart';

class CadasterRepositoryImpl implements CadasterRepository {
  final CadasterDatasource datasource;

  CadasterRepositoryImpl(this.datasource);

  @override
  Future<Either<Exception, UserCredential>?>? cadaster(user.User user) async {
    return await datasource.cadaster(user);
  }

}
