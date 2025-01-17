import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 84, 129, 224),
      width: size.width / 2,
      height: size.height / 5,
      child: const Center(
        child: Text("MediaQuery Example"),
      ),
    );
  }
}