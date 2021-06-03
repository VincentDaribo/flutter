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
        title: Text('Welcome to Network Scanner'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/flutter.jpg"), fit: BoxFit.cover)),
        child: ButtonMain(),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class ButtonMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedB1(),
          ElevatedB2(),
        ],
      ),
    );
  }
}

class ElevatedB1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 150,
      child: ElevatedButton.icon(
        onPressed: () {
          print('bouton 2\n');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
        ),
        icon: Icon(Icons.wifi),
        label: Text('Scan bluetooth'),
      ),
    );
  }
}

class ElevatedB2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 150,
      child: ElevatedButton.icon(
        onPressed: () {
          print('bouton 2\n');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
        ),
        icon: Icon(Icons.wifi),
        label: Text('Scan wifi'),
      ),
    );
  }
}
