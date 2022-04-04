import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
  
}
