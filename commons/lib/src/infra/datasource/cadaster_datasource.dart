import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:commons/src/domain/entities/user.dart' as User;


abstract class CadasterDatasource {
  Future<Either<Exception, UserCredential>?>? cadaster(User.User user);
}
