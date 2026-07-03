import 'package:flutter/material.dart';
import 'page2.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
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
      child: Padding(
        padding: EdgeInsetsGeometry.only(left: 50, right: 50, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://static.vecteezy.com/system/resources/thumbnails/010/471/366/small/cute-welcome-in-cafe-hi-coffee-text-postcard-poster-background-hand-drawn-doodle-illustration-vector.jpg",
            ),
            Text(
              "to Coffee Hub",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 90),
            Container(
              height: 45,
              width: 350,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 241, 241),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Enter your email",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 96, 94, 94),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              width: 350,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 241, 241),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 96, 94, 94),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 45,
              width: 350,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                        color: DefaultSelectionStyle.defaultColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Text("Remember me"),
                  SizedBox(width: 80),
                  Text("Forget Password?", style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
            SizedBox(height: 120),
            SizedBox(
              width: 350,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 48, 43, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5, 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                   
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
