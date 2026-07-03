import 'package:flutter/material.dart';
import 'page1.dart';


void main() {
  runApp(
    material()
  );
}

class material extends StatelessWidget {
  const material({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
  debugShowCheckedModeBanner: false,

      home:  page1(),
    

);
  }
}

