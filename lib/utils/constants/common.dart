import 'package:ott_demo/utils/exports/common_exports.dart';

class AppDisplay {
  static bool get isDarkMode =>
      NavigationService.context.brightness == Brightness.dark;

  static bool get isPortrait =>
      MediaQuery.of(NavigationService.context).orientation ==
      Orientation.portrait;

  static bool get isTablet {
    if (MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .shortestSide >
        600) {
      return true;
    } else {
      return false;
    }
  }
}
