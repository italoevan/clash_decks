import 'package:commons/src/domain/repositories/is_logged_repository.dart';
import 'package:commons/src/infra/datasource/is_logged_datasource.dart';
import 'package:commons/src/infra/repositories/is_logged_repository_impl.dart';
import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeDatasource extends Mock implements IsLoggedDatasource {}

void main() {
  test("Should return true if user is logged", () async {
    IsLoggedRepository repository = IsLoggedRepositoryImpl(FakeDatasource());

    var result = await repository.isLogged();

    bool? value = result.fold((l) => null, (r) => r);

    expect(
      value, false);
  });
}
