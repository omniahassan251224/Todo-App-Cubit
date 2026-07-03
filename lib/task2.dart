import 'package:flutter/material.dart';

void main() {
  runApp(material());
}

class material extends StatelessWidget {
  const material({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 0, 0, 0),
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 8, 205, 100),
        title: Row(
          spacing: 170,
          children: [
            Icon(Icons.menu, color: Colors.white, size: 30),
            Text(
              "Task2",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          alignment: AlignmentDirectional.center,
          width: 510,
          height: 460,
          child: Row(
            spacing: 10,
            children: [
              Container(
                height: 460,
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.red,
                ),
                child: Center(child: Text("child 1")),
              ),
              Column(
                spacing: 10,
                children: [
                  Container(
                    height: 225,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    child: Center(child: Text("child 2")),
                  ),
                  Container(
                    height: 225,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    ),
                    child: Center(child: Text("child 3")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
