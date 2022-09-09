import 'package:flutter/material.dart';

class ExampleFour extends StatefulWidget {
  const ExampleFour({Key? key}) : super(key: key);

  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calling Api'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: FutureBuilder(builder: ((context, snapshot) {
            return Text('');
          })))
        ],
      ),
    );
  }
}
