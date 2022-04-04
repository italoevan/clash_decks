import 'package:commons/src/domain/repositories/is_logged_repository.dart';
import 'package:commons/src/infra/datasource/is_logged_datasource.dart';
import 'package:dartz/dartz.dart';

class IsLoggedRepositoryImpl implements IsLoggedRepository {
  final IsLoggedDatasource datasource;

  IsLoggedRepositoryImpl(this.datasource);

  @override
  Future<Either<Exception, bool>> isLogged() async {
    return await datasource.isLogged();
  }
}
