import 'package:flutter_test/flutter_test.dart';

/// Usage: an error message should be displayed
Future<void> anErrorMessageShouldBeDisplayed(WidgetTester tester) async {
  throw UnimplementedError();
}
