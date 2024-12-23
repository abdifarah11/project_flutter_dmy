import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter app'),
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: TextStyle(
              fontSize: 46,
              fontWeight: FontWeight.bold,
              color: counter > 0 ? Colors.green : Colors.red),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter = counter - 1;
                });
              },
              heroTag: 'btn1',
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter = counter + 1;
                });
              },
              heroTag: 'btn2',
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
