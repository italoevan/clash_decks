
import 'package:commons_dependencies/commons_dependencies.dart';

import '../entities/user.dart' as user;

abstract class CadasterRepository {
  Future<Either<Exception, UserCredential>?>? cadaster(user.Usuario user);
}
