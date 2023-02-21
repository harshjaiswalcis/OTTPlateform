import 'package:ott_demo/main.dart';
import 'package:ott_demo/utils/exports/common_exports.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;

  // static String initialRoute() {
  //   final String? tyriosLoginToken =
  //       StorageServices.getString("tyriosLoginToken");
  //   final String? tyriosLoggedInUserId = StorageServices.getString("userID");
  //   final String? tyriosAppRegistrationID =
  //       StorageServices.getString("appRegistrationID");
  //   final String? tyriosInstanceURL =
  //       StorageServices.getString("tyriosInstanceURL");

  //   ///  IF ANYTHING FOUND TO BE NULL FROM THE BELOW LIST, THEN ROUTING THE USER TO LOGIN SCREEN TO AUTHENTICATION
  //   if ([
  //     tyriosLoginToken,
  //     tyriosLoggedInUserId,
  //     tyriosAppRegistrationID,
  //     tyriosInstanceURL
  //   ].contains(null)) {
  //     return Routes.login;
  //   }
  //   return Routes.initAppFetch;
  // }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
