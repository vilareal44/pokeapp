// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
// ignore_for_file: avoid_redundant_argument_values

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/helpers.dart';

void main() {
  group('AppButton', () {
    final theme = AppTheme().themeData;
    final buttonTextTheme = theme.textTheme.labelLarge!.copyWith(
      inherit: false,
    );

    testWidgets('renders button', (tester) async {
      final buttonText = Text('buttonText');

      await tester.pumpApp(
        Column(
          children: [
            AppButton.primary(
              child: buttonText,
            ),
            AppButton.primarySmall(
              child: buttonText,
            ),
          ],
        ),
      );
      expect(find.byType(AppButton), findsNWidgets(2));
      expect(find.text('buttonText'), findsNWidgets(2));
    });

    testWidgets(
        'renders primary button '
        'when `AppButton.primary()` called', (tester) async {
      final buttonText = Text('buttonText');

      await tester.pumpApp(
        AppButton.primary(
          child: buttonText,
          onPressed: () {},
        ),
        theme: theme,
      );

      final finder = find.byType(ElevatedButton);
      final widget = tester.widget(finder) as ElevatedButton;

      expect(
        widget.style?.backgroundColor?.resolve({}),
        AppColors.primary,
      );
      expect(
        widget.style?.textStyle?.resolve({}),
        buttonTextTheme,
      );
      expect(
        widget.style?.maximumSize?.resolve({}),
        Size(double.infinity, 56),
      );
      expect(
        widget.style?.minimumSize?.resolve({}),
        Size(double.infinity, 56),
      );
    });

    testWidgets(
        'renders primarySmall button '
        'when `AppButton.primarySmall()` called', (tester) async {
      final buttonText = Text('buttonText');

      await tester.pumpApp(
        AppButton.primarySmall(
          child: buttonText,
          onPressed: () {},
        ),
        theme: theme,
      );

      final finder = find.byType(ElevatedButton);
      final widget = tester.widget(finder) as ElevatedButton;

      expect(
        widget.style?.backgroundColor?.resolve({}),
        AppColors.primary,
      );
      expect(
        widget.style?.textStyle?.resolve({}),
        buttonTextTheme,
      );
      expect(
        widget.style?.maximumSize?.resolve({}),
        Size(double.infinity, 40),
      );
      expect(
        widget.style?.minimumSize?.resolve({}),
        Size(0, 40),
      );
    });
  });
}
