import 'package:flutter/material.dart';
import 'package:pro/application/theme_service.dart';
import 'package:pro/presentation/screen_examples/screen_one.dart';
import 'package:pro/presentation/screen_examples/screen_two.dart';
import 'package:pro/root_bottun_navigation.dart';
import 'package:pro/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeService.sDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const RootBottunNavigation(),
          routes: <String, WidgetBuilder>{
            '/root': (BuildContext context) => const RootBottunNavigation(),
            '/screenOne': (BuildContext context) => const ScreenOne(),
            '/screenTwo': (BuildContext context) => const ScreenTwo(),
          },
        );
      },
    );
  }
}
