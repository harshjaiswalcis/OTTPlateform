import 'package:ott_demo/utils/exports/common_exports.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.darkGray,
    scaffoldBackgroundColor: AppColors.white,
    unselectedWidgetColor: AppColors.mediumGray,
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.black),
    iconTheme: const IconThemeData(color: AppColors.darkGray, size: 24),
    chipTheme: const ChipThemeData(
      deleteIconColor: AppColors.darkGray,
      backgroundColor: AppColors.whiteSmoke,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      labelStyle: TextStyle(
        fontSize: 16,
        fontFamily: "Poppins",
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.black),
    dividerTheme: const DividerThemeData(
      thickness: 0.5,
      color: AppColors.mediumGray,
    ),
    snackBarTheme: const SnackBarThemeData(
      elevation: 5,
      backgroundColor: AppColors.saltPan,
      contentTextStyle: TextStyle(
        fontSize: 16,
        color: AppColors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 48,
          fontStyle: FontStyle.normal,
          color: AppColors.darkGray,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600),
      headline2: TextStyle(
          fontSize: 40,
          fontStyle: FontStyle.normal,
          color: AppColors.darkGray,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600),
      headline3: TextStyle(
          fontSize: 32,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600),
      headline4: TextStyle(
          fontSize: 25,
          fontStyle: FontStyle.normal,
          color: AppColors.darkGray,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600),
      headline5: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.normal,
          color: AppColors.darkGray,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600),
      headline6: TextStyle(
        fontSize: 16,
        fontFamily: "Poppins",
        color: AppColors.darkGray,
        fontWeight: FontWeight.w600,
      ),
      subtitle1: TextStyle(
          fontSize: 16,
          fontStyle: FontStyle.normal,
          color: AppColors.darkGray,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400),
      subtitle2: TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.normal,
          color: AppColors.darkGray,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400),
      button: TextStyle(
        fontSize: 16,
        color: AppColors.white,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
      ),
      caption: TextStyle(
        fontSize: 12,
        color: AppColors.darkGray,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
      ),
      bodyText1: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.normal,
          color: AppColors.darkGray,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400),
      bodyText2: TextStyle(
        fontSize: 16,
        color: AppColors.darkGray,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
      ),
    ),
    scrollbarTheme: ScrollbarThemeData(
      minThumbLength: 6,
      interactive: true,
      thickness: MaterialStateProperty.all(5),
      thumbColor:
          MaterialStateProperty.all(AppColors.darkGray.withOpacity(0.5)),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.darkGray,
      iconTheme: IconThemeData(color: AppColors.darkGray),
    ),
    cardTheme: const CardTheme(
      elevation: 0,
      color: AppColors.whiteSmoke,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
        side: BorderSide(width: 0.5, color: AppColors.darkGray),
      ),
    ),
    tabBarTheme: const TabBarTheme(
      labelPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      labelColor: AppColors.darkGray,
      unselectedLabelColor: AppColors.mediumGray,
      labelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      unselectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 2,
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.darkGray,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(AppColors.white),
      checkColor: MaterialStateProperty.all(AppColors.darkGray),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      side: MaterialStateBorderSide.resolveWith(
        (_) => const BorderSide(
            width: 1, style: BorderStyle.solid, color: AppColors.darkGray),
      ),
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      textColor: AppColors.darkGray,
      iconColor: AppColors.darkGray,
      collapsedIconColor: AppColors.darkGray,
      collapsedTextColor: AppColors.darkGray,
      childrenPadding: EdgeInsets.only(left: 20),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const ContinuousRectangleBorder()),
        backgroundColor: MaterialStateProperty.all(AppColors.darkGray),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            color: AppColors.darkGray,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      isDense: true,
      fillColor: AppColors.white,
      prefixIconColor: AppColors.darkGray,
      suffixIconColor: AppColors.darkGray,
      labelStyle: TextStyle(
        fontSize: 16,
        color: AppColors.darkGray,
        fontWeight: FontWeight.w400,
      ),
      prefixStyle: TextStyle(
        fontSize: 13,
        color: AppColors.darkGray,
        fontWeight: FontWeight.w400,
      ),
      suffixStyle: TextStyle(
        fontSize: 14,
        color: AppColors.darkGray,
        fontWeight: FontWeight.w400,
      ),
      errorStyle: TextStyle(
        fontSize: 14,
        color: AppColors.vividRed,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: TextStyle(
        fontSize: 16,
        color: AppColors.mediumGray,
        fontWeight: FontWeight.w400,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: AppColors.darkGray),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: AppColors.mediumGray),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppColors.darkGray),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: AppColors.vividRed),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: AppColors.vividRed),
      ),
    ),
  );
}
