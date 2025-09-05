import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('navigates from Home to Details and back', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Home Screen'), findsOneWidget);

    await tester.tap(find.text('Go to Details'));
    await tester.pumpAndSettle();

    expect(find.text('Details Screen'), findsOneWidget);
    expect(find.text('Go back'), findsOneWidget);
  });
}
