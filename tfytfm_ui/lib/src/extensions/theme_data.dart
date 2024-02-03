import 'package:tfytfm_ui/tfytfm_ui.dart';
import 'package:flutter/material.dart';

///Extension on Themedata that must be added to return the correct asset
extension ThemeX on ThemeData {
  ///Returns the correct TFYTFMIcon based on the current theme
  TFYTFMIcon get icons {
    final isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      return TFYTFMIconsDark();
    } else {
      return  TFYTFMIconsLight();
    }
  }
}
