import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_new/main.dart';

void main() {
  testWidgets('Nectar app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const NectarApp());
    expect(find.text('nectar'), findsOneWidget);
    await tester.tap(find.text('nectar'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome\nto our store'), findsOneWidget);
  });
}
