import 'package:commons/commons.dart' as common;
import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:micro_app_login/src/presenter/register/states/register_state.dart';

abstract class RegisterController {
  RegisterState get registerState;
  Future register();
}

class RegisterControllerImpl implements RegisterController {
  late common.User user;
  final common.CadasterUsecase cadasterUsecase;
  Rx<RegisterState> state = Rx(const WaitigDataRegisterState());

  RegisterControllerImpl(this.cadasterUsecase);

  @override
  RegisterState get registerState => state.value;

  RegisterState setRs(RegisterState st) => state.value = st;

  @override
  Future register() async {
    
    var response = await cadasterUsecase.cadaster(user);

    response!.fold((l) => null, (r) => null);
  }
}
