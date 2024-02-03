import 'package:flutter/material.dart';
import 'package:tfytfm_ui/tfytfm_ui.dart';
import 'package:flutter/services.dart';

class TFYTFMTheme {

  /// Light Theme example based on Material 2 Design.
  ThemeData get lightTheme {
    return ThemeData(
      primaryColor: TFYTFMColors.skyBlue,
      canvasColor: _backgroundColor,
      scaffoldBackgroundColor: _backgroundColor,
      iconTheme: _lightIconTheme,
      appBarTheme: _lightAppBarTheme,
      dividerTheme: _dividerTheme,
      textTheme: _lightTextTheme,
      buttonTheme: _buttonTheme,
      splashColor: TFYTFMColors.transparent,
      elevatedButtonTheme: _elevatedButtonTheme,
      textButtonTheme: _textButtonTheme,
      colorScheme: _lightColorScheme,
      bottomSheetTheme: _lightBottomSheetTheme,
      listTileTheme: _listTileTheme,
      switchTheme: _switchTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      tabBarTheme: _tabBarTheme,
      bottomNavigationBarTheme: _bottomAppBarTheme,
      chipTheme: _chipTheme,
      dividerColor: TFYTFMColors.grey,
      outlinedButtonTheme: _lightOutlinedButtonTheme,
    );
  }

  /// Dark Theme example based on Material 2 Design.
  ThemeData get darkTheme => lightTheme.copyWith(
        chipTheme: _darkChipTheme,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: TFYTFMColors.black,
        colorScheme: _darkColorScheme,
        appBarTheme: _darkAppBarTheme,
        disabledColor: TFYTFMColors.white.withOpacity(0.5),
        textTheme: _darkTextTheme,
        unselectedWidgetColor: TFYTFMColors.lightGrey,
        iconTheme: _darkIconTheme,
        bottomSheetTheme: _darkBottomSheetTheme,
        outlinedButtonTheme: _darkOutlinedButtonTheme,
        textButtonTheme: _darkTextButtonTheme,
      );

  /// Returns the correct color based on the current theme.
  ColorScheme get _lightColorScheme {
    return ColorScheme.light(
      primary: TFYTFMColors.skyBlue,
      primaryContainer: TFYTFMColors.lightBlue200,
      onPrimaryContainer: TFYTFMColors.oceanBlue,
      secondary: TFYTFMColors.paleSky,
      onSecondary: TFYTFMColors.white,
      secondaryContainer: TFYTFMColors.lightBlue200,
      onSecondaryContainer: TFYTFMColors.oceanBlue,
      tertiary: TFYTFMColors.secondary.shade700,
      onTertiary: TFYTFMColors.white,
      tertiaryContainer: TFYTFMColors.secondary.shade300,
      onTertiaryContainer: TFYTFMColors.secondary.shade700,
      error: TFYTFMColors.red,
      errorContainer: TFYTFMColors.red.shade200,
      onErrorContainer: TFYTFMColors.redWine,
      background: _backgroundColor,
      onBackground: TFYTFMColors.onBackground,
      surfaceVariant: TFYTFMColors.surface,
      onSurfaceVariant: TFYTFMColors.grey,
      inversePrimary: TFYTFMColors.crystalBlue,
    );
  }

  /// Returns the correct color based on the current theme.
  ColorScheme get _darkColorScheme => _lightColorScheme.copyWith(
        background: TFYTFMColors.black,
        onBackground: TFYTFMColors.white,
        surface: TFYTFMColors.black,
        onSurface: TFYTFMColors.lightGrey,
        primary: TFYTFMColors.blue,
        onPrimary: TFYTFMColors.oceanBlue,
        primaryContainer: TFYTFMColors.oceanBlue,
        onPrimaryContainer: TFYTFMColors.lightBlue200,
        secondary: TFYTFMColors.paleSky,
        onSecondary: TFYTFMColors.lightGrey,
        secondaryContainer: TFYTFMColors.liver,
        onSecondaryContainer: TFYTFMColors.brightGrey,
      );

  /// Returns the correct background color based on the current theme.
  Color get _backgroundColor => TFYTFMColors.white;

  /// Returns the correct [AppBarTheme] based on the current theme.
  AppBarTheme get _lightAppBarTheme {
    return AppBarTheme(
      iconTheme: _lightIconTheme,
      titleTextStyle: _lightTextTheme.titleMedium,
      elevation: 0,
      toolbarHeight: 64,
      backgroundColor: TFYTFMColors.white,
      toolbarTextStyle: _lightTextTheme.titleLarge,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  /// Returns the correct [AppBarTheme] based on the current theme.
  AppBarTheme get _darkAppBarTheme {
    return _lightAppBarTheme.copyWith(
      backgroundColor: TFYTFMColors.grey,
      iconTheme: _darkIconTheme,
      toolbarTextStyle: _darkTextTheme.titleLarge,
      titleTextStyle: _darkTextTheme.titleMedium,
    );
  }

  /// Returns the correct [IconThemeData] based on the current theme.
  IconThemeData get _lightIconTheme {
    return const IconThemeData(
      color: TFYTFMColors.black,
    );
  }

  /// Returns the correct [IconThemeData] based on the current theme.
  IconThemeData get _darkIconTheme {
    return const IconThemeData(
      color: TFYTFMColors.white,
    );
  }

  /// Returns the correct [DividerThemeData] based on the current theme.
  DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      color: TFYTFMColors.outlineLight,
      space: TFYTFMSpacing.lg,
      thickness: TFYTFMSpacing.xxxs,
      indent: TFYTFMSpacing.lg,
      endIndent: TFYTFMSpacing.lg,
    );
  }

  /// Returns the correct [TextTheme] based on the current theme.
  TextTheme get _lightTextTheme => lightUITextTheme;

  /// Returns the correct [TextTheme] based on the current theme.
  TextTheme get _darkTextTheme {
    return _lightTextTheme.apply(
      bodyColor: TFYTFMColors.white,
      displayColor: TFYTFMColors.white,
      decorationColor: TFYTFMColors.white,
    );
  }

  /// The UI text theme based on [TFYTFMTextStyle].
  static final lightUITextTheme = TextTheme(
    displayLarge: TFYTFMTextStyle.headline1,
    displayMedium: TFYTFMTextStyle.headline2,
    displaySmall: TFYTFMTextStyle.headline3,
    titleMedium: TFYTFMTextStyle.subtitle1,
    titleSmall: TFYTFMTextStyle.subtitle2,
    bodyLarge: TFYTFMTextStyle.bodyText1,
    bodyMedium: TFYTFMTextStyle.bodyText2,
    labelLarge: TFYTFMTextStyle.button,
    bodySmall: TFYTFMTextStyle.caption,
    labelSmall: TFYTFMTextStyle.overline,
  ).apply(
    bodyColor: TFYTFMColors.black,
    displayColor: TFYTFMColors.black,
    decorationColor: TFYTFMColors.black,
  );

  /// Returns the correct [ChipThemeData] based on the current theme.
  ChipThemeData get _chipTheme {
    return ChipThemeData(
      backgroundColor: TFYTFMColors.secondary.shade300,
      disabledColor: _backgroundColor,
      selectedColor: TFYTFMColors.secondary.shade700,
      secondarySelectedColor: TFYTFMColors.secondary.shade700,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      labelStyle: TFYTFMTextStyle.button.copyWith(color: TFYTFMColors.black),
      secondaryLabelStyle:
          TFYTFMTextStyle.labelSmall.copyWith(color: TFYTFMColors.white),
      brightness: Brightness.light,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: const BorderSide(),
      ),
    );
  }

  /// Returns the correct [ChipThemeData] based on the current theme.
  ChipThemeData get _darkChipTheme {
    return _chipTheme.copyWith(
      backgroundColor: TFYTFMColors.white,
      disabledColor: _backgroundColor,
      selectedColor: TFYTFMColors.secondary.shade700,
      secondarySelectedColor: TFYTFMColors.secondary.shade700,
      labelStyle: TFYTFMTextStyle.button.copyWith(
        color: TFYTFMColors.secondary.shade700,
      ),
      secondaryLabelStyle: TFYTFMTextStyle.labelSmall.copyWith(
        color: TFYTFMColors.black,
      ),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: TFYTFMColors.white, width: 2),
        borderRadius: BorderRadius.circular(22),
      ),
    );
  }

  /// Returns the correct [ButtonThemeData] based on the current theme.
  ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TFYTFMSpacing.sm),
      ),
      padding: const EdgeInsets.symmetric(vertical: TFYTFMSpacing.lg),
      buttonColor: TFYTFMColors.blue,
      disabledColor: TFYTFMColors.lightGrey,
      height: 48,
      minWidth: 48,
    );
  }

  /// Returns the correct [ElevatedButtonThemeData] based on the current theme.
  ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        padding: const EdgeInsets.symmetric(vertical: TFYTFMSpacing.lg),
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: TFYTFMFontWeight.bold,
        ),
        backgroundColor: TFYTFMColors.blue,
      ),
    );
  }

  /// Returns the correct [TextButtonThemeData] based on the current theme.
  TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: TFYTFMFontWeight.light,
        ),
        foregroundColor: TFYTFMColors.black,
      ),
    );
  }

  /// Returns the correct [TextButtonThemeData] based on the current theme.
  TextButtonThemeData get _darkTextButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: TFYTFMFontWeight.light,
        ),
        foregroundColor: TFYTFMColors.white,
      ),
    );
  }

  /// Returns the correct [BottomSheetThemeData] based on the current theme.
  BottomSheetThemeData get _lightBottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: TFYTFMColors.modalBackground,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TFYTFMSpacing.lg),
          topRight: Radius.circular(TFYTFMSpacing.lg),
        ),
      ),
    );
  }

  /// Returns the correct [BottomSheetThemeData] based on the current theme.
  BottomSheetThemeData get _darkBottomSheetTheme {
    return _lightBottomSheetTheme.copyWith(
      backgroundColor: TFYTFMColors.grey,
    );
  }

  /// Returns the correct [ListTileThemeData] based on the current theme.
  ListTileThemeData get _listTileTheme {
    return const ListTileThemeData(
      iconColor: TFYTFMColors.onBackground,
      contentPadding: EdgeInsets.all(TFYTFMSpacing.lg),
    );
  }

  /// Returns the correct [SwitchThemeData] based on the current theme.
  SwitchThemeData get _switchTheme {
    return SwitchThemeData(
      thumbColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return TFYTFMColors.darkAqua;
        }
        return TFYTFMColors.black;
      }),
      trackColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return TFYTFMColors.primaryContainer;
        }
        return TFYTFMColors.paleSky;
      }),
    );
  }

  /// Returns the correct [ProgressIndicatorThemeData] based on the current
  /// theme.
  ProgressIndicatorThemeData get _progressIndicatorTheme {
    return const ProgressIndicatorThemeData(
      color: TFYTFMColors.darkAqua,
      circularTrackColor: TFYTFMColors.borderOutline,
    );
  }

  /// Returns the correct [TabBarTheme] based on the current theme.
  TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      labelStyle: TFYTFMTextStyle.button,
      labelColor: TFYTFMColors.darkAqua,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: TFYTFMSpacing.lg,
        vertical: TFYTFMSpacing.md + TFYTFMSpacing.xxs,
      ),
      unselectedLabelStyle: TFYTFMTextStyle.button,
      unselectedLabelColor: TFYTFMColors.mediumEmphasisSurface,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3,
          color: TFYTFMColors.darkAqua,
        ),
      ),
      indicatorSize: TabBarIndicatorSize.label,
    );
  }

  /// Returns the correct [BottomNavigationBarThemeData] based on the current
  /// theme.
  BottomNavigationBarThemeData get _bottomAppBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: TFYTFMColors.black,
      selectedItemColor: TFYTFMColors.white,
      unselectedItemColor: TFYTFMColors.white.withOpacity(0.74),
    );
  }

  /// Returns the correct [OutlinedButtonThemeData] based on the current theme.
  OutlinedButtonThemeData get _lightOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const StadiumBorder()),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => TFYTFMColors.white,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) => const BorderSide(),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: TFYTFMSpacing.xlg,
            vertical: TFYTFMSpacing.lg,
          ),
        ),
        alignment: Alignment.center,
        textStyle: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? TFYTFMTextStyle.button.copyWith(
                  color: TFYTFMColors.black,
                  fontWeight: FontWeight.w500,
                )
              : TFYTFMTextStyle.button.copyWith(
                  color: states.contains(MaterialState.disabled)
                      ? TFYTFMColors.black
                      : TFYTFMColors.white,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ),
    );
  }

  /// Returns the correct [OutlinedButtonThemeData] based on the current theme.
  OutlinedButtonThemeData get _darkOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const StadiumBorder()),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => TFYTFMColors.black,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) => const BorderSide(color: TFYTFMColors.white),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: TFYTFMSpacing.xlg,
            vertical: TFYTFMSpacing.lg,
          ),
        ),
        alignment: Alignment.center,
        textStyle: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? TFYTFMTextStyle.button.copyWith(
                  color: TFYTFMColors.white,
                  fontWeight: FontWeight.w500,
                )
              : TFYTFMTextStyle.button.copyWith(
                  color: states.contains(MaterialState.disabled)
                      ? TFYTFMColors.black
                      : TFYTFMColors.white,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ),
    );
  }

}
