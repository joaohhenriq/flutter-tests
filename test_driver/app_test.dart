import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('User app', (){
    final button = find.byType('FloatingActionButton');
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if(driver != null) {
        driver.close();
      }
    });

    test('Given app is ran When clicking fab Then User is 25 years old', () async {
      await driver.tap(button);
      
      final text = find.text('User user age 25');

      expect(await driver.getText(text), 'User user age 25');
    });

  });
}