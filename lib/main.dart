import 'package:animation/slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double position = 0.0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home Page',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, 
              fontFamily: 'Roboto', 
            ),
          ),
          centerTitle: true,
          backgroundColor:
              Colors.deepPurple, 
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
        
                padding: const EdgeInsets.all(16.0),
                
                child: Transform.translate(
                  offset: Offset(position, position),
                  child: Lottie.asset(
                    'assets/Helloa.json',
                    height: MediaQuery.of(context).size.height * 0.6,
                  ),
                ),
              ),
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Button color
                  textStyle: TextStyle(color: Colors.white), // Text color
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SliderScreen()));
                },
                child: const Text(
                  'Go to slider',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
}
