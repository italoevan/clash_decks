import 'package:commons/src/domain/repositories/is_logged_repository.dart';

abstract class IsLoggedUsecase {
  Future<bool> isLogged();
}

class IsLoggedUsecaseImpl implements IsLoggedUsecase {
  final IsLoggedRepository repository;

  IsLoggedUsecaseImpl(this.repository);

  @override
  Future<bool> isLogged() async {
    var result = await repository.isLogged();

    try {
      return result.fold((l) => false, (r) => true);
    } catch (e) {
      return false;
    }
  }
}
