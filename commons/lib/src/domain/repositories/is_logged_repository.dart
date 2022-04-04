import 'package:commons_dependencies/commons_dependencies.dart';

abstract class IsLoggedRepository {
  Future<Either<Exception, bool>> isLogged();
}
