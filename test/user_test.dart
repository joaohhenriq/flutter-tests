import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_teste/user.dart';

void main() {
  test('Given user with age of 24 When birthday is called Then user is old', () async {
    /// arrange
    final user = User(24, 'user1',);

    /// action
    user.birthday();

    /// assert
    expect(user.age, 25);
  });
}
