import 'package:flutter/material.dart';
import 'package:ott_demo/utils/exports/common_exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OTT Demo",
      theme: AppTheme.theme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: Routes.homeScreen,
      onGenerateRoute: NavigationService().generateRoute,
    );
  }
}
