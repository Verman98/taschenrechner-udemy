// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:taschenrechner_app/Logik/operationen.dart';

import 'package:taschenrechner_app/main.dart';

void main() {

  test("Testen von Operationen", () {
    expect(Operationen.isDigit("3"), true);
    expect(Operationen.isDigit("A"), false);

    String input = "22 + 11";
    expect(Operationen.calculateInputString(input), 33);

    input = "22 + 11 X 2";
    expect(Operationen.calculateInputString(input), null);

    input = "22 * 11";
    expect(Operationen.calculateInputString(input), null);
  });


  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TaschenrechnerApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
