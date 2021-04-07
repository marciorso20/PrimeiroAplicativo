import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Vamos começar a contar?",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              '$resultado',
              style: TextStyle(fontSize: 55),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    resultado += 1;
                  });
                },
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 25,
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {
                  setState(() {
                    resultado -= 1;
                  });
                },
                child: Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}
