import 'package:flutter/material.dart';
import 'package:pro/application/theme_service.dart';
import 'package:provider/provider.dart';

class ButtonExamples extends StatefulWidget {
  const ButtonExamples({Key? key}) : super(key: key);


  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  bool SwichState = true;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onLongPress: () {
              print("Long pressed");
            },
            onPressed: () {
              print("TextButton pressed");
            },
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Text Button",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ))),
        IconButton(
            onPressed: () {
                
              print("icon pressed");
            },
            icon: const Icon(Icons.play_arrow)),
        Switch(
            value: SwichState,
            onChanged: (value) {
              Provider.of<ThemeService>(context, listen: false).toggleThem();

              SwichState = value;
              setState(() {
                   
                
              });
             
            })
      ],
    );
  }
}