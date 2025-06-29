import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cookie_of_fate/main.dart';

void main() {
  testWidgets('Fortune changes on button tap', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const CookieOfFateApp());

    // Initial text should be the prompt
    expect(find.text('Tap the cookie to reveal your fate 🍪'), findsOneWidget);

    // Tap the button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // After tapping, expect the prompt to be gone and a fortune to appear
    expect(find.text('Tap the cookie to reveal your fate 🍪'), findsNothing);
    expect(find.byType(Text), findsWidgets); // Fortune text is present
  });
}
