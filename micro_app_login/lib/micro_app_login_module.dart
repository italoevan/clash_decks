import 'package:commons/commons.dart';
import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:micro_app_login/src/presenter/initial_controller.dart';
import 'package:micro_app_login/src/presenter/register/register_page_controller.dart';

import 'src/presenter/initial_page.dart';
import 'src/presenter/register/register_page.dart';

class MicroAppLoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory<RegisterController>((i) => RegisterControllerImpl()),
        Bind.factory<InitialController>((i) => InitialControllerImpl()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (context, arg) => InitialPage()),
        ChildRoute(RoutesUtil.register, child: (context, arg) => RegisterPage()),
      ];
}
