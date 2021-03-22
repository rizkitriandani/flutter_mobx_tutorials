

import 'package:flutter/material.dart';
import 'package:flutter_mobx_tutorials/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Increment Dzikir Count", (WidgetTester tester) async {
    //DEFINED THE UI COMPONENT YOU WANT TO TEST
      final increaseCount = find.byKey(ValueKey("increaseCounter"));
      final decreaseCount = find.byKey(ValueKey("decreaseCounter"));
      final resetCount = find.byKey(ValueKey("resetCounter"));
      final textCounter = find.byKey(ValueKey("textCounter"));

      await tester.pumpWidget(MaterialApp(
        home: MainPage(),
      ));

      await tester.tap(increaseCount);
      await tester.pump();

      expect(find.text("1"), findsOneWidget);

  });
}