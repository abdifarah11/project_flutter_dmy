import 'package:flutter/material.dart';
import 'package:pro/presentation/lists/widgets/list_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> exmaple = ['exmaple', 'strings', 'list', 'widh'];
    return Scaffold(
        appBar: AppBar(
          title: const Text('list view'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemCount: exmaple.length,
              itemBuilder: (contex, index) {
                return list_item(
                  title: exmaple[index],
                  index: index,
                );
                //Container(
                //   color: Colors.blue,
                //   height: 100,
                //   child: Center(child: Text(exmaple[index]),)
                // );
              }),
        ));
  }
}
