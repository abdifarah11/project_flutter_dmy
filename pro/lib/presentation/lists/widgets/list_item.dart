import 'package:flutter/material.dart';

class list_item extends StatefulWidget {
  final String title;
  final int index;
  const list_item({super.key, required this.title, required this.index});

  @override
  State<list_item> createState() => _list_itemState();
}

class _list_itemState extends State<list_item> {
  bool _selected =false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(6)),
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text(' itmem number ${widget.index}'),
        leading: Checkbox(value: _selected, 
        onChanged: (value) {
          setState(() {
            _selected = value ?? false;
            
          });
        }),
      ),
    );
  }
}
