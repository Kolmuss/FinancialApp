import 'package:financial_app/screens/add_balance.dart';
import 'package:financial_app/screens/main_screen/main_screen.dart';
import 'package:financial_app/screens/settings.dart';
import 'package:seafarer/seafarer.dart';

class Routes {

  Routes._();

  static final router = Seafarer(
    options: const SeafarerOptions(
      defaultTransitionDuration: Duration(milliseconds: 100)
    )
  );

  static const String mainScreen = '/main_screen';
  static const String settings = '/settings';
  static const String addBalance = '/add_balance';

  static void createRoutes() {
    router.addRoutes([
      SeafarerRoute(name: mainScreen, builder: (context, args, params) => MainScreen())
    ]);
    router.addRoutes([
      SeafarerRoute(name: settings, builder: (context, args, params) => Settings())
    ]);
    router.addRoutes([
      SeafarerRoute(name: addBalance, builder: (context, args, params) => AddBalance())
    ]);
  }
}