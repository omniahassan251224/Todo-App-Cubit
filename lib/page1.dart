import 'package:flutter/material.dart';
import 'page4.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: MyAppBar(),
      body: MyBody(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.transparent);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
  return SingleChildScrollView(
  child: Container(
    width: double.infinity,
     decoration: BoxDecoration(
       image: DecorationImage(
         image: NetworkImage(
           "https://static.vecteezy.com/system/resources/previews/069/188/269/non_2x/coffee-beans-and-cup-of-coffee-on-a-black-background-free-photo.jpeg",
         ),
         fit: BoxFit.contain,
         alignment: Alignment.topCenter,
       ),
     ),
     padding: EdgeInsets.only(top: 400, left: 30, right: 30),
     child: Column(
       children: [
         Text(
           "Fall in Love with Coffee in Coffee Hub",
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 40,
             color: Colors.white,
           ),
           textAlign: TextAlign.center,
         ),
         SizedBox(height: 20),
         Text(
           "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
           style: TextStyle(fontSize: 20, color: Colors.grey),
           textAlign: TextAlign.center,
         ),
         SizedBox(height: 20),
         ElevatedButton(
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Page4()),
             );
           },
           style: ElevatedButton.styleFrom(
             backgroundColor: Color.fromARGB(255, 48, 43, 40), 
             foregroundColor: Colors.white, 
             minimumSize: Size(450, 55), 
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20), 
             ),
           ),
           child: Text(
             "Get Start",
             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
           ),
         ),
       ],
     ),
        ));
  }
}
