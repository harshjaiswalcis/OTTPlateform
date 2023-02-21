import 'package:ott_demo/utils/exports/common_exports.dart';

extension ScreenSize on double {
  double get getScreenHeight =>
      MediaQuery.of(NavigationService.context).size.height * this;

  double get getScreenWidth =>
      MediaQuery.of(NavigationService.context).size.width * this;
}

extension AppObjectExtensions on Object? {
  void toLog() => log(toString());

  String toJsonEncode() => jsonEncode(this);
}

extension BuildContextExtensions on BuildContext {
  void unFocusKeyboard() => FocusScope.of(this).unfocus();

  TextTheme get textTheme => Theme.of(this).textTheme;

  Color get primaryColor => Theme.of(this).primaryColor;

  Brightness get brightness => Theme.of(this).brightness;

  /// SCREEN RESOLUTION METHODS
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;

  bool get isTablet =>
      MediaQueryData.fromWindow(WidgetsBinding.instance.window)
          .size
          .shortestSide >
      600;

  /// NAVIGATION METHODS
  void pop() => Navigator.of(this).pop();

  void mayBePop() async => await Navigator.of(this).maybePop();

  void pushNamed(String routeName, {Object? arguments}) =>
      Navigator.pushNamed(this, routeName, arguments: arguments);

  void popAndPushNamed(String routeName, {Object? arguments}) =>
      Navigator.popAndPushNamed(this, routeName, arguments: arguments);

  void pushReplacementNamed(String routeName, {Object? arguments}) =>
      Navigator.pushReplacementNamed(this, routeName, arguments: arguments);

  void pushNamedAndRemoveUntil(String routeName, {Object? arguments}) =>
      Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
          arguments: arguments);

  /// BOTTOM-SHEET, DIALOG AND SNACKBAR METHODS
  PersistentBottomSheetController<dynamic> showAppBottomSheet(Widget child) =>
      showBottomSheet(context: this, builder: (BuildContext context) => child);

  dynamic showAppGeneralDialog({
    required Widget child,
    Color? barrierColor,
  }) async =>
      await showGeneralDialog(
        context: this,
        barrierColor: barrierColor ?? Colors.transparent.withOpacity(0.1),
        pageBuilder: (context, animation, secondaryAnimation) => child,
      );

  ScaffoldMessengerState get _scaffoldMessenger => ScaffoldMessenger.of(this);

  void hideSnackbar() => _scaffoldMessenger.hideCurrentSnackBar();

  void removeSnackbar() => _scaffoldMessenger.removeCurrentSnackBar();

  void showAppSnackBar(
      {required String title, Color? bgColor, Color? titleColor}) {
    hideSnackbar();
    removeSnackbar();
    _scaffoldMessenger.showSnackBar(
      SnackBar(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        margin: const EdgeInsets.all(2),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 4),
        backgroundColor: bgColor,
        content: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Text(
                title,
                style: TextStyle(color: titleColor),
              )),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () => removeSnackbar(),
                child: Icon(
                  AppIcons.cross,
                  color: titleColor,
                ),
              )
              // TPSvgPictureAsset(
              //   AppIcons.cross,
              //   color: titleColor,
              //   onTap: () => removeSnackbar(),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

extension AppStringExtensions on String {
  Uri toUri() => Uri.parse(this);

  int toInt() => int.parse(this);

  num toNum() => num.parse(this);

  String toURIEncodeComponent() => Uri.encodeComponent(this);

  double toDouble() => double.parse(this);

  String get shuffle => (split('')..shuffle()).join('');

  String get replaceWithUnderscore => replaceRange(
      1, length - 1, List.generate(length - 2, (index) => "-").toList().join());

  /// validation string extensions
  String? get emailValidate =>
      contains("@") ? null : "Please enter a valid email.";

  dynamic toJsonDecode() => jsonDecode(this);

  Map<String, dynamic> toJsonDecodeToMapOfStringDynamic() =>
      (jsonDecode(toString()) as Map).toMapOfStringDynamic();

  List<Map<String, dynamic>> toJsonDecodeToListOfMapOfStringDynamic() =>
      (jsonDecode(toString()) as List).toListOfMapOfStringDynamic();
}

extension AppListExtensions<E> on List<E> {
  List<Map<String, dynamic>> toListOfMapOfStringDynamic() =>
      map((e) => e).toList().cast<Map<String, dynamic>>();

  List<E> _removeAll(Iterable<E> allToRemove) {
    if (allToRemove.isEmpty) {
      return this;
    } else {
      for (final element in allToRemove) {
        remove(element);
      }
      return this;
    }
  }

  List<E> _distinctBy(E Function(E) predicate) {
    final HashSet<dynamic> set = HashSet();
    final List<E> list = [];
    toList().forEach((e) {
      final dynamic key = predicate(e);
      if (set.add(key)) {
        list.add(e);
      }
    });
    return list;
  }

  List<E> duplicates({E Function(E)? distinctBy}) {
    final List<E> dupes = List.from(this);
    if (distinctBy == null) {
      return dupes._removeAll(toSet().toList());
    }
    return dupes._removeAll(_distinctBy(distinctBy).toSet().toList());
  }
}

extension DurationExtensions on num {
  Duration get ms => milliseconds;

  Duration get microseconds => Duration(microseconds: round());

  Duration get milliseconds => Duration(microseconds: (this * 1000).round());

  Duration get seconds => Duration(microseconds: (this * 1000 * 1000).round());

  Duration get minutes =>
      Duration(microseconds: (this * 1000 * 1000 * 60).round());

  Duration get hours =>
      Duration(microseconds: (this * 1000 * 1000 * 60 * 60).round());

  Duration get days =>
      Duration(microseconds: (this * 1000 * 1000 * 60 * 60 * 24).round());
}

extension DoubleExtension on double {
  String get toShortDoubleNumber =>
      "${toString().split(".").first}.${toString().split(".")[1].substring(0, 2)}";
}

extension MapParsing<T> on Map<T, T> {
  Map<String, dynamic> toMapOfStringDynamic() => cast<String, dynamic>();

  void renameKey(T previousName, T newName) {
    final T previousData = this[previousName] as T;
    this[newName] = previousData;
    remove(previousName);
  }
}
