import 'package:flutter/material.dart';

void main () {
  runApp(FriendsApp());
}

class FriendsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Amigos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meus Amigos'),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Myfriend('Anderson'),
              Myfriend('Andrew'),
              Myfriend('Camilla'),
              Myfriend('Leticia'),
            ],
          ),
        ),
      ),
    );
  }
}

class Myfriend extends StatelessWidget {
  final String text;
  const Myfriend(this.text);

  @override
  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.all(10),
      child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
          child: Text(text, style: TextStyle(fontSize: 50))
      ),
    );
  }
}