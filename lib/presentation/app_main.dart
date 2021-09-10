import 'package:find_my_money/infrastructure/constants/app_constants.dart';
import 'package:find_my_money/infrastructure/router/router.gr.dart'
    as router_di;
import 'package:flutter/material.dart';

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      routeInformationParser: router_di.Router().defaultRouteParser(),
      routerDelegate: router_di.Router().delegate(),
    );
  }
}
