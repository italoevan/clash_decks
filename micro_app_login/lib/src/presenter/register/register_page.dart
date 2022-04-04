import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_login/src/presenter/register/register_page_controller.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller = Modular.get();

  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var item in buildIntroduction(context)) item,
              const SizedBox(height: 24),
              GenericTextField(),
              const SizedBox(height: 16),
              GenericTextField(
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              GenericButton(child: const Text("Register"), onPressed: () {})
            ],
          ),
        )));
  }

  List<Widget> buildIntroduction(BuildContext context) {
    return <Widget>[
      Text(
        "Make your account",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      const Divider(),
      Text(
        "Therefore, you can enjoy our services",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ];
  }
}
