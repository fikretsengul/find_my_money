import 'package:auto_route/auto_route.dart';
import 'package:find_my_money/presentation/home/home_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: HomeScreen, initial: true),
  ],
)
class $Router {}
