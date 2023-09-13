import 'package:imc_calculator/models/person.dart';
import 'package:imc_calculator/utils/imc_calcutlator.dart';
import 'package:test/test.dart';

void main() {
  group('Calculate the IMC', () {
    var valuesToTest = {
      {'weight': 15.0}: "Magreza grave",
      {'weight': 58.0}: "Magreza moderada",
      {'weight': 78.0}: "Saudável",
      {'weight': 82.0}: "Sobrepeso",
      {'weight': 110.0}: "Obesidade Grau I",
      {'weight': 120.0}: "Obesidade Grau II",
      {'weight': 150.0}: "Obesidade Mórbida",
    };
    valuesToTest.forEach((values, expected) {
      test('Entry: $values: Expected: $expected', () {
        Person person = Person("name", values['weight'], 1.80);
        IMCCalculator imcCalculator = IMCCalculator(person);
        expect(imcCalculator.getScale(), equals(expected));
      });
    });
  });
}
