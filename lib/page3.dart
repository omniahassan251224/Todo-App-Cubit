import 'package:flutter/material.dart';



class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: MyBody(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.chevron_left, size: 30),
                  Text(
                    "Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite_border, size: 30),
                ],
              ),

              Image.network(
                "https://png.pngtree.com/png-vector/20230930/ourmid/pngtree-cold-brewed-iced-latte-coffee-on-plastic-cup-side-view-generative-png-image_10154258.png",
                width: double.infinity,
              ),
              Text(
                "Berwed coffee",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Text("4.8"),
                  Text("(230)", style: TextStyle(color: Colors.grey)),
                ],
              ),
              Divider(),
              Text(
                "Description",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Brewed coffee is a smooth and classic coffee made by slowly extracting rich flavors from ground coffee beans using hot water. It delivers a balanced taste with a comforting arom",
              ),
              SizedBox(height: 20),
              Text(
                "Size",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  categoryItem("S", false),
                  categoryItem("M", true),
                  categoryItem("L", false),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Padding(
                  padding: EdgeInsetsGeometry.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "75 EGP",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 48, 43, 40),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 200,
                        height: 55,
                        decoration: BoxDecoration(
                          color:Color.fromARGB(255, 48, 43, 40),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "BUY",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget categoryItem(String title, bool selected) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
    decoration: BoxDecoration(
      color: selected
          ? const Color(0xFFC67C4E)
          : const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(10),
      border: selected
          ? Border.all(color: const Color.fromARGB(255, 254, 185, 159))
          : Border.all(color: Colors.grey, width: 1),
    ),
    child: Text(
      title,
      style: TextStyle(color: selected ? Colors.black : Colors.black),
    ),
  );
}
