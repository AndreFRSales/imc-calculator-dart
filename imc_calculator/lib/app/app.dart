import 'package:imc_calculator/models/person.dart';
import 'package:imc_calculator/utils/console_utils.dart';
import 'package:imc_calculator/utils/imc_calcutlator.dart';

void calculateImcApp() {
  print("Bem vindo a Calculadora de IMC");
  var name = ConsoleUtils.readValueWithText("Digite o nome da pessoa:");
  var weight =
      ConsoleUtils.getDoubleBiggerThanZero("Digite o seu peso em kilos (kg)");
  var height =
      ConsoleUtils.getDoubleBiggerThanZero("Digite a sua altura em metros (m)");

  Person person = Person(name, weight, height);
  IMCCalculator imcCalculator = IMCCalculator(person);
  var imcScale = imcCalculator.getScale();

  print(
      "O IMC da pessoa ${person.getName()} com peso ${person.getWeight()}kg e altura ${person.getHeight()}m é : $imcScale");
}
