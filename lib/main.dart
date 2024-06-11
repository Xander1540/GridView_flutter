import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  var arrColors = [Colors.amberAccent,
      Colors.blue,
      Colors.blueGrey,
      Colors.cyan,
      Colors.deepOrange,
      Colors.deepPurple,
      Colors.green,
      Colors.indigo,
      Colors.lightBlue,
      Colors.lightGreen,
      Colors.lime,
      Colors.orange,
      Colors.pink,
      Colors.purple,
      Colors.red,
      Colors.teal,
      Colors.yellow,
    Colors.cyan,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.green,
    Colors.indigo,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.lime,
    Colors.orange,
    Colors.pink,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
          itemBuilder: (context, index){
        return Container(color: arrColors[index]);
          }, itemCount: arrColors.length)
    );
  }
}
