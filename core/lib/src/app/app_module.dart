import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:micro_app_splash/micro_app_splash.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
      ];
}
