
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  
  @override
  Widget build(BuildContext context) {


  return Scaffold(
    appBar: AppBar(
      title: const Text('Mouse Parallax',style: TextStyle(color: Colors.white,fontSize: 15)),
      backgroundColor: Colors.green,
      centerTitle: true,
    ),
    body:ParallaxStack(
        layers: [
          ParallaxLayer(
            yRotation: 0.50,
            xOffset: 20,
            child: Center(
              child: Container(
                width: 250,
                height: 250,
                color: Colors.black,
              ),
            ),
          ),
          ParallaxLayer(
            yRotation: 0.50,
            xOffset: 100,
            child: Center(
              child: Container(
                width: 220,
                height: 220,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
  );
  }
}