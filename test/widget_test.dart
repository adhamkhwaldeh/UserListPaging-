import 'package:flutter_test/flutter_test.dart';
import 'package:owwn_coding_challenge/components/app_component.dart';
import 'package:owwn_coding_challenge/components/home_component.dart';

void main() {
  testWidgets(
    'Users list loads the first page and fails on the second page',
    (WidgetTester tester) async {},
  );

  testWidgets(
    'Tap on an item and change users name then pop and check if details are updated',
    (WidgetTester tester) async {
      await tester.pumpWidget(AppComponent());
      var button = find.text("Ruby Jacobs");
      expect(button, findsOneWidget);
      print('Ruby Jacobs');
      await tester.tap(button);
      await tester.pump();
      expect(find.text("sveD rettulF"), findsNothing);
      print('sveD rettulF');
    },
  );

  testWidgets(
    'Panning on the chart shows the currect value',
    (WidgetTester tester) async {},
  );
}
