import 'package:tfytfm_ui/tfytfm_ui.dart';
import 'package:flutter/material.dart';

class SpacingPage extends StatelessWidget {
  const SpacingPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SpacingPage());
  }

  @override
  Widget build(BuildContext context) {
    const spacingList = [
      _SpacingItem(spacing: TFYTFMSpacing.xxxs, name: 'xxxs'),
      _SpacingItem(spacing: TFYTFMSpacing.xxs, name: 'xxs'),
      _SpacingItem(spacing: TFYTFMSpacing.xs, name: 'xs'),
      _SpacingItem(spacing: TFYTFMSpacing.sm, name: 'sm'),
      _SpacingItem(spacing: TFYTFMSpacing.md, name: 'md'),
      _SpacingItem(spacing: TFYTFMSpacing.lg, name: 'lg'),
      _SpacingItem(spacing: TFYTFMSpacing.xlg, name: 'xlg'),
      _SpacingItem(spacing: TFYTFMSpacing.xxlg, name: 'xxlg'),
      _SpacingItem(spacing: TFYTFMSpacing.xxxlg, name: 'xxxlg'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Spacing')),
      body: ListView.builder(
        itemCount: spacingList.length,
        itemBuilder: (_, index) => spacingList[index],
      ),
    );
  }
}

class _SpacingItem extends StatelessWidget {
  const _SpacingItem({required this.spacing, required this.name});

  final double spacing;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TFYTFMSpacing.sm),
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: TFYTFMColors.black,
                width: TFYTFMSpacing.xxs,
                height: TFYTFMSpacing.lg,
              ),
              Container(
                width: spacing,
                height: TFYTFMSpacing.lg,
                color: TFYTFMColors.skyBlue,
              ),
              Container(
                color: TFYTFMColors.black,
                width: TFYTFMSpacing.xxs,
                height: TFYTFMSpacing.lg,
              ),
            ],
          ),
          const SizedBox(width: TFYTFMSpacing.sm),
          Text(name),
        ],
      ),
    );
  }
}
