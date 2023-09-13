import 'package:imc_calculator/models/person.dart';
import 'package:test/test.dart';

void main() {
  test('Given the person has a name then should be returned', () {
    var person = Person("Name", 1.0, 1.2);
    expect(person.getName(), "Name");
  });

  test('Given the person has a weight then should be returned', () {
    var person = Person("Name", 1.0, 1.2);
    expect(person.getWeight(), 1.0);
  });

  test('Given the person has a height then should be returned', () {
    var person = Person("Name", 1.0, 1.2);
    expect(person.getHeight(), 1.2);
  });
}
