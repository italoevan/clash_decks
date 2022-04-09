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

  void _navigateToHome() {
    Modular.to.pushNamed(common.RoutesUtil.initial + common.RoutesUtil.home);
  }

  @override
  Future register() async {
    setRs(const LoadingDataRegisterState());
    var response = await cadasterUsecase
        .cadaster(common.User(email: "igbehh@gmail.com", password: "italo445")); //TODO remove
    setRs(const WaitigDataRegisterState());

    response!.fold((l) => print("nada"), (r) => _navigateToHome());
  }
}
