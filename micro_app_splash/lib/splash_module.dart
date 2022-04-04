import 'package:commons/commons.dart';
import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:micro_app_login/micro_app_login.dart';
import 'package:micro_app_splash/src/presenter/pages/splash_controller.dart';
import 'package:micro_app_splash/src/presenter/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => IsLoggedDatasourceImpl()),
        Bind((i) => IsLoggedRepositoryImpl(i.get())),
        Bind((i) => IsLoggedUsecaseImpl(i.get())),
        Bind((i)=> SplashControllerImpl(i.get()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, arg) =>  SplashPage()),
            ModuleRoute(RoutesUtil.login, module: MicroAppLoginModule() )
        
      ];
}
