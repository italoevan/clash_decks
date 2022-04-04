import 'package:flutter/material.dart';
import 'package:micro_app_splash/src/presenter/pages/splash_controller.dart';
import 'package:commons_dependencies/commons_dependencies.dart' as commons;

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashController controller = commons.Modular.get();

  @override
  void initState() {
    controller.isLogged();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
