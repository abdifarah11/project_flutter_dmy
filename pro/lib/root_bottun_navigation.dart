import 'package:flutter/material.dart';
import 'package:pro/presentation/counter/counter_screen.dart';
import 'package:pro/presentation/lists/list_screen.dart';
import 'package:pro/presentation/theme_animation/widgets/theme_animation_screen.dart';
import 'package:pro/presentation/widget_examples/widget_examples_screen.dart';

class RootBottunNavigation extends StatefulWidget {
  const RootBottunNavigation({super.key});

  @override
  State<RootBottunNavigation> createState() => _RootBottunNavigationState();
}

class _RootBottunNavigationState extends State<RootBottunNavigation> {
   int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: const [
            WidgetExampleScreen(),
            CounterScreen(),
            ListScreen(),
          ThemeAnimationScreen(),
            
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onTap: (index) {
            
            setState(() {
              _currentIndex=index;
              
            });
            
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'star'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
            BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'thems'),
          ],
        ));
  }
}
