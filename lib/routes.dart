import 'package:financial_app/screens/main_screen/main_screen.dart';
import 'package:seafarer/seafarer.dart';

class Routes {

  Routes._();

  static final router = Seafarer(
    options: const SeafarerOptions(
      defaultTransitionDuration: Duration(milliseconds: 100)
    )
  );

  static const String mainScreen = '/main_screen';

  static void createRoutes() {
    router.addRoutes([
      SeafarerRoute(name: mainScreen, builder: (context, args, params) => MainScreen())
    ]);
  }
}