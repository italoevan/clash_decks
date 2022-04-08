import 'package:commons/src/domain/entities/user.dart' as User;
import 'package:commons/src/infra/datasource/cadaster_datasource.dart';
import 'package:commons_dependencies/commons_dependencies.dart';

class FirebaseCadasterDatasource implements CadasterDatasource {
  final FirebaseAuth auth;

  FirebaseCadasterDatasource({required this.auth});

  @override
  Future<Either<Exception, UserCredential>?>? cadaster(User.User user) async {
    try {
      var response = await auth.createUserWithEmailAndPassword(
          email: user.email, password: user.password);

      return Right(response);
    } catch (e) {
      return Left(e as Exception);
    }
  }
}
