import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raf App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Raf App bar text')),
        body: const TextInputWiget());
  }
}

class TextInputWiget extends StatefulWidget {
  const TextInputWiget({Key? key}) : super(key: key);

  @override
  _TextInputWigetState createState() => _TextInputWigetState();
}

class _TextInputWigetState extends State<TextInputWiget> {
  final controller = TextEditingController();
  String textTyped = "";

  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(text) {
    if (text == "Hello") {
      controller.clear();
    }
    setState(() {
      textTyped = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: controller,
        decoration: const InputDecoration(
            prefix: Icon(Icons.message), labelText: "Type a Message"),
        onChanged: (text) => changeText(text),
      ),
      Text(textTyped),
    ]);
  }
}
