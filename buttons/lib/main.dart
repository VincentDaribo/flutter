import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step 3 : learning how to put images'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: [
            TextB(),
            ElevatedB(),
          ],
        ),
      ),
      backgroundColor: Colors.green[100],
    );
  }
}

class TextB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        print('bouton 1');
      },
      icon: Icon(
        Icons.mood_bad,
        color: Colors.white70,
      ),
      label: Text(
        'Text Button',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
    );
  }
}

class ElevatedB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        print('bouton 2\n');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      icon: Icon(Icons.mood),
      label: Text('Elevated button'),
    );
  }
}
