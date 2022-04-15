import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_login/src/presenter/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Modular.get();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [GenericTextField(), const Divider(), GenericTextField()],
      ),
    );
  }
}
