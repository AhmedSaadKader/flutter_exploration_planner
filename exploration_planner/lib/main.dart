import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Exploration Planner!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Space Exploration Planner!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Column(
        children: [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TaskItem(label: "Load rocket with supplies"),
        TaskItem(label: "Launch rocket"),
        TaskItem(label: "Circle the home planet"),
        TaskItem(label: "Head out to the first moon"),
        TaskItem(label: "Launch moon lander #1"),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  final String label;
  const TaskItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Checkbox(value: false, onChanged: null),
        Text(label),
      ],
    );
  }
}

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("You are this far"),
        LinearProgressIndicator(
          value: 0.0,
        )
      ],
    );
  }
}
