import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:blog_app/main.dart' as app;
import 'package:flutter/widgets.dart';


void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Login page test", (tester) async {
    app.main();
    await tester.pumpAndSettle();

    // Enter email
    final emailField = find.byKey(Key("emailField"));
    await tester.enterText(emailField, "test@example.com");

    // Enter password
    final passwordField = find.byKey(Key("passwordField"));
    await tester.enterText(passwordField, "password123");

    // Tap login button
    final loginButton = find.byKey(Key("loginButton"));
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    // Verify navigation to home page
    expect(find.text("Welcome"), findsOneWidget);
  });
}
