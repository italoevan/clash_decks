import 'package:commons/commons.dart';
import 'package:commons_dependencies/commons_dependencies.dart';

import 'src/presenter/initial_page.dart';

class MicroAppLoginModule extends Module {
  
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, arg) => const InitialPage())
      ];
}
