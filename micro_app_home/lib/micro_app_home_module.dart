import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:micro_app_home/micro_app_home.dart';

class MicroAppHomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, arg) => const HomePage())
      ];
}
