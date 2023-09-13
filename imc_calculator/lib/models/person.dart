class Person {
  String _name = "";
  double _weight = 0.0;
  double _height = 0.0;

  Person(name, weight, height)
      : _name = name,
        _weight = weight,
        _height = height;

  String getName() => _name;
  double getWeight() => _weight;
  double getHeight() => _height;
}
