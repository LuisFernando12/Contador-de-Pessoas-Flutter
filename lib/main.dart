import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}

class Contador extends StatelessWidget {
  const Contador({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de pessoas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _counter <= 19 ? 'Entrou' : 'Lotado',
                style: TextStyle(
                    color: _counter == 20 ? Colors.red : Colors.white,
                    fontSize: 40),
              ),
              Text('$_counter', style: Theme.of(context).textTheme.headline1),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 150, 20, 0),
                      child: ElevatedButton(
                        onPressed: _counter == 0 ? null : _decrementCounter,
                        child: const Text(
                          "Saiu",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            onPrimary: Colors.black,
                            primary: Colors.white,
                            minimumSize: const Size(120, 50)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                      child: ElevatedButton(
                        onPressed: _counter == 20 ? null : _incrementCounter,
                        child: const Text("Entrou"),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            onPrimary: Colors.black,
                            primary: Colors.white,
                            minimumSize: const Size(120, 50)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
