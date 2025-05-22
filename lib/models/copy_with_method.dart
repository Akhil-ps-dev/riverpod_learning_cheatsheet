void main() {
  Person person = Person(name: 'John', age: 30);
  print('Before: ${person.name}, ${person.age}');

  person = person.copyWith(name: 'Doe');
  print('degoo, ');
}

//copyWith  helps you create a new modified object from an existing one
class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(name: name ?? this.name, age: age ?? this.age);
  }
}
