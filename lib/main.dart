import 'package:flutter/material.dart';
import 'package:untitled/Screens/home_page.dart';
import 'package:untitled/utils/quiz_data.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => MainApp(),
        'home_page': (context) => MyApp(),
      },
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: height / 18,
          width: width / 3.5,
          child: Column(
            children: allQueations.map((e) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('home_page');
                },
                child: Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
