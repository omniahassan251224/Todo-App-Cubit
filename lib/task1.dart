import 'package:flutter/material.dart';

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
      home: Home()
      );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(
            "Menu",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),
          ),
        ),
        body:  Column(
            children: [
              Row(
                children: [
                  Text(
                    "  HOT DRINKS ",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(" Partition", style: TextStyle(fontSize: 25)),
                ],
              ),
              containar1(
                name: "CAPPUCCINO",
                price: "40 L.E",
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8fJUWbABQ4u7Z8HN_dqDE6G3GjeuyJBApXlkFGoqy_hIzL-HDFUao54&s",
              ),containar1(
                name: "COFFEE",
                price: "30 L.E",
                image:
                    "data:image/jpeg;base64,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",
              ),
              containar1(
                name: "MOKA",
                price: "50 L.E",
                image:
                    "https://www.shutterstock.com/image-photo/mocha-ice-coffee-serving-on-600nw-2595014231.jpg",
              ),
               containar1(
                name: "MANGO",
                price: "60 L.E",
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNkzQ5pYUhZHgLUZ4_CtU_aiwDv4EzzhW_gmVYQDUqfAOlvEtU_DevuA0&s",
              ),

            ],
          ),
        );
  }
}

class containar1 extends StatelessWidget {
  String name;
  String price;
  String image;

  containar1({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      height: 110,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 230,
        children: [
          // Image.asset("asset/images.jfif"),
          Image.network(image, width: 120, height: 70),
          Column(
            spacing: 35,
            children: [
              Text(name, style: TextStyle()),
              Row(
                spacing: 20,
                children: [
                  Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
                  Icon(Icons.favorite, color: Colors.red, size: 20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

