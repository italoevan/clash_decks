import 'package:commons/src/domain/entities/user.dart' as User;
import 'package:commons/src/infra/datasource/cadaster_datasource.dart';
import 'package:commons_dependencies/commons_dependencies.dart';

class FirebaseCadasterDatasource implements CadasterDatasource {
  @override
  Future<Either<Exception, void>?>? cadaster(User.User user) async {
    return null;
  }
}
