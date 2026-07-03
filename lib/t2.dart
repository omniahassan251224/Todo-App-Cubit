import 'package:flutter/material.dart';
import 'package:my_first_project/task2.dart';

void main() {
  runApp(material());
}

class material extends StatelessWidget {
  const material({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: MyBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 38, 87, 39),
        shape: const CircleBorder(),
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 1, 62, 41),
      toolbarHeight: 85,
      title: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Text(
          "WhatsApp",

          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      actions: [
        Padding(
          padding: EdgeInsets.only(bottom: 20, right: 10),
          child: Icon(Icons.search, color: Colors.white, size: 20),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20, right: 10),
          child: Icon(Icons.more_vert, color: Colors.white, size: 20),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(85);
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 9,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Color.fromARGB(255, 204, 201, 201),
          thickness: 1,
          height: 2,
          indent: 70,
          endIndent: 20,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        String userName;
        String messege;
        String date = "7/10/23";
        Widget? icon;

        bool isLast = index == 8;
        if (isLast) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Tap and hold on chat for more option",
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 150, 149, 149),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          );
        }

        if (index == 0) {
          userName = "Ahmed Salah";
          date = "07:47PM";
        } else if (index == 1) {
          userName = "User";
        } else {
          userName = "User $index";
        }
        if (index == 0 || index == 1 || index % 2 != 0) {
          messege = "Hello";
        } else {
          messege = "Hello User $index";
          icon = Icon(Icons.done_all, size: 16, color: Colors.green);
        }

        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPeiEMnaKldzlCQExSz2lDRwzQ4kr488-URw&s",
            ),
          ),
          title: Text(
            userName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          subtitle: Row(
            children: [
              if (icon != null) ...[icon, SizedBox(width: 5)],
              Text(messege, style: TextStyle(fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 111, 122, 128))),
            ],
          ),
          trailing: Text(date ,style: TextStyle(color: Color.fromARGB(255, 111, 122, 128))),
        );
      },
    );
  }
}
