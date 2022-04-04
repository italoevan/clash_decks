import 'package:commons/src/infra/datasource/is_logged_datasource.dart';
import 'package:commons_dependencies/commons_dependencies.dart';

class IsLoggedDatasourceImpl implements IsLoggedDatasource {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<Either<Exception, bool>> isLogged() async {
    try {
      User? user = auth.currentUser;
      
      if(user != null) return const Right(true);

      return Left(Exception("User not logged"));
     
    } catch (e) {
      throw Left(Exception("User not logged, $e"));
    }
  }
}
