import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grade_converter/main.dart';

void main() {
  testWidgets('Grade conversion test', (WidgetTester tester) async {
    // Build the app and trigger a frame
    await tester.pumpWidget(const MyApp());

    // Find the text field and button
    final textField = find.byType(TextField);
    final button = find.text('Convert to Letter Grade');

    // Enter a valid score
    await tester.enterText(textField, '85');
    await tester.tap(button);
    await tester.pump();

    // Verify the result
    expect(find.text('Letter Grade: B'), findsOneWidget);

    // Enter an invalid input
    await tester.enterText(textField, 'abc');
    await tester.tap(button);
    await tester.pump();

    // Verify the error message
    expect(find.text('Letter Grade: Invalid input'), findsOneWidget);
  });
}
