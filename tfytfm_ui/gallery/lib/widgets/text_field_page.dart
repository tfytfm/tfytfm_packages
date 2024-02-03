import 'package:tfytfm_ui/tfytfm_ui.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TextFieldPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Field',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TFYTFMSpacing.lg),
        child: Column(
          children: [
            TFYTFMTextField.emailTextField(
              onChanged: (_) {},
            ),
            const SizedBox(height: TFYTFMSpacing.sm),
            TFYTFMTextField.passwordTextField(
              onChanged: (_) {},
            ),
            const SizedBox(height: TFYTFMSpacing.sm),
            TFYTFMTextField(
              hintText: 'Default text field',
              onChanged: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}
