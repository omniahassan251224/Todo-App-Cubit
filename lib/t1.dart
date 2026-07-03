import 'package:flutter/material.dart';
import 'package:my_first_project/task2.dart';

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
      home: Home()
      );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(),
        body: MyBody()
        
        );
  }
}

class  MyAppBar  extends StatelessWidget  implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 51, 194, 245),
          title: Text(
            "Contacts",

            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_outlined, color: Colors.white, size: 30),
            ),
          ],
        );

  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),

                  title: Text(
                    index == 0
                        ? "Mohamed samy"
                        : index == 1
                        ? "mohamed Elsebaey"
                        : index == 2
                        ? "Ahmed"
                        : index == 3
                        ? "omar"
                        : "ali",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),

                  subtitle: Text(
                    index == 0
                        ? "01016673951"
                        : index == 1
                        ? "01559508335"
                        : index == 2
                        ? "01023423526"
                        : index == 3
                        ? "01013563951"
                        : "01346346967",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Divider(indent: 80, endIndent: 200),

                Padding(
                  padding: const EdgeInsets.only(left: 70, bottom: 10, top: 10),
                  child: Row(
                    children: [
                      Icon(Icons.call, color: Colors.black),
                      SizedBox(width: 90),
                      Icon(Icons.edit, color: Colors.green),
                      SizedBox(width: 90),
                      Icon(Icons.delete, color: Colors.red),
                    ],
                  ),
                ),

                Divider(indent: 80),
              ],
            );
          },
    );
  }
}



