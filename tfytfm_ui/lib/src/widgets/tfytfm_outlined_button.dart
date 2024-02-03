import 'package:tfytfm_ui/tfytfm_ui.dart';
import 'package:flutter/material.dart';

class TFYTFMOutlinedButton extends StatelessWidget {
  const TFYTFMOutlinedButton({
    super.key,
    this.backgroundColor,
    this.darkBackgroundColor,
    required this.text,
    this.textColor,
    this.onPressed,
    this.borderColor,
    this.icon,
  });
  
  /// Primary button which background color is the primary color of the theme
  const TFYTFMOutlinedButton.primary({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
  })  : backgroundColor = TFYTFMColors.lightBlue200,
        darkBackgroundColor = TFYTFMColors.blue,
        borderColor = TFYTFMColors.white,
        textColor = TFYTFMColors.black;

  /// Secondary button which background color is the secondary color of the theme
  const TFYTFMOutlinedButton.secondary({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
  })  : backgroundColor = TFYTFMColors.grey,
        darkBackgroundColor = TFYTFMColors.grey,
        borderColor = TFYTFMColors.white,
        textColor = TFYTFMColors.white;

  /// Text on the button
  final String text;

  /// Callback when the button is pressed
  final VoidCallback? onPressed;

  /// Background color of the button
  final Color? backgroundColor;

  /// Background color of the button in dark mode
  final Color? darkBackgroundColor;

  /// Text color of the button
  final Color? textColor;

  /// Border color of the button
  final Color? borderColor;

  /// Icon on the button
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final isInactive = onPressed == null;
    final theme = Theme.of(context);
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        disabledBackgroundColor: theme.colorScheme.background,
        backgroundColor: backgroundColor,
        side: borderColor == null
            ? null
            : BorderSide(
                color: onPressed == null
                    ? (theme.colorScheme.onBackground)
                    : borderColor!,
              ),
        padding: const EdgeInsets.symmetric(
          horizontal: TFYTFMSpacing.md,
          vertical: TFYTFMSpacing.md,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: icon,
            ),
          SizedBox(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TFYTFMTextStyle.button.copyWith(
                color:
                    isInactive ? (theme.colorScheme.onBackground) : textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
