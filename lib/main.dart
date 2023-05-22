import 'package:blinkx/provider.dart';
import 'package:blinkx/screen/blinkx_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BlinkxProvider>(
      create: (BuildContext context) => BlinkxProvider(),
      child: Consumer<BlinkxProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return MaterialApp(
            themeMode: value.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              textTheme: const TextTheme(
                titleMedium: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            darkTheme: ThemeData(
              scaffoldBackgroundColor: Colors.black,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              textTheme: const TextTheme(
                titleMedium: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: const BlinkX(),
          );
        },
      ),
    );
  }
}
