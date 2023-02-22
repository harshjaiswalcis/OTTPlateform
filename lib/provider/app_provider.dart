import 'package:ott_demo/utils/exports/common_exports.dart';

class AppProvider extends ChangeNotifier {
  final List<String> tabs = [
    "home",
    "movie",
    "series",
    "screen4",
    "screen5",
  ];
  ValueNotifier<String> currentTab = ValueNotifier("home");
}
