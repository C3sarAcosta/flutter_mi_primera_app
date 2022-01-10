import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _contador = 0;

  /*void _incrementar() {
    setState(() {
      _contador++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi primera app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Has presionado:'),
            Text('$_contador'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: _incrementar,
        onPressed: () => setState(() {
          _contador++;
        }),
        child: Icon(Icons.add_circle_outlined),
      ),
    );
  }
}
