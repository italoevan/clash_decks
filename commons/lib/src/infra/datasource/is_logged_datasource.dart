import 'package:commons_dependencies/commons_dependencies.dart';

abstract class IsLoggedDatasource {
  Future<Either<Exception, bool>> isLogged();
}
