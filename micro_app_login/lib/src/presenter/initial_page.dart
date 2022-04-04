import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              buildImage(context),
              Expanded(
                  child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppConsts.initialTitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 22),
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    Text(
                      AppConsts.initialMessage,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
      bottomSheet: buildBottomSheet(),
    );
  }

  Widget buildImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(color: Colors.red),
    );
  }

  Widget buildBottomSheet() {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GenericButton(
              shadowColor: Colors.green,
              width: 140,
              child: const Text(
                "Register",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {},
              primaryColor: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            GenericButton(
              shadowColor: Colors.green,
              width: 140,
              child: const Text(
                "Sign in",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {},
              primaryColor: Colors.white.withBlue(1999),
            ),
          ],
        ),
      ),
    );
  }
}
