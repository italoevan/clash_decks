import 'package:commons/src/domain/repositories/cadaster_repository.dart';
import 'package:commons_dependencies/commons_dependencies.dart';

import '../entities/user.dart' as user;

abstract class CadasterUsecase {
  Future<Either<Exception, UserCredential>?>? cadaster(user.Usuario user);
}

class CadasterUsecaseImpl implements CadasterUsecase {
  final CadasterRepository repository;
  late User userCredentials;

  CadasterUsecaseImpl(this.repository);

  @override
  Future<Either<Exception, UserCredential>?>? cadaster(
      user.Usuario user) async {
    var response = await repository.cadaster(user);

    return response;
  }

}
