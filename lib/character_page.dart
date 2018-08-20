import 'package:flutter/material.dart';
import 'package:marvel/dtos/character.dart';

class CharacterPage extends StatefulWidget{
  final Character character;

  CharacterPage({
    Key key,
    @required this.character
  }) : super(key: key);

  CharacterPageState createState()=>  CharacterPageState();
}


class CharacterPageState extends State<CharacterPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character?.name),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first screen when tapped!
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}