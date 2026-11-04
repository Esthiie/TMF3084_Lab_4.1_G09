
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_4/main.dart';

void main() {
  testWidgets('Pizza Hunter app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaHunterApp());

    expect(find.text('Pizza Hunter'), findsOneWidget);
  });
}
