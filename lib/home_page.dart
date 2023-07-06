// ignore_for_file: prefer_typing_uninitialized_variables, list_remove_unrelated_type

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Person> personList = [
    Person(name: "qasim", age: 25, dob: DateTime(2023, 12, 12))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Model Classes")),
        body: ListView.builder(
            itemCount: personList.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(personList[index].name),
                subtitle: Text(personList[index].age.toString()),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: (() {
                    personList.remove(index);
                    setState(() {});
                  }),
                ),
              );
            }));
  }
}

class Person {
  String name;
  var age;
  var dob;

  Person({required this.name, required this.age, required this.dob});
}
