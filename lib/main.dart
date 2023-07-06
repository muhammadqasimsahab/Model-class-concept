import 'package:flutter/material.dart';
import 'package:model_with_asif_taj/own%20model%20concept/home_screen_of_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenOfOwnModel(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Person> personList = [
    Person(name: "qasi", age: 25, dob: DateTime(2023, 12, 12))
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
  int age;
  DateTime dob;

  Person({required this.name, required this.age, required this.dob});
}
