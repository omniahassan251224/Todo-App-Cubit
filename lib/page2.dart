import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: MyAppBar(),
      body: MyBody(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 48, 43, 40),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 350,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 64, 60, 60),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 10),
                          Text("Search", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),

                    SizedBox(width: 10),

                    Icon(Icons.notifications_none, color: Colors.white),
                    SizedBox(width: 10),
                    Icon(Icons.person_outline, color: Colors.white),
                  ],
                ),

                SizedBox(height: 20),

                Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 15,

                    color: const Color.fromARGB(255, 223, 217, 217),
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Dokki - Giza",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 20, left: 15, bottom: 20),
            child: Row(
              children: [
                categoryItem("All Coffee", true),
                categoryItem("Macchiato", false),
                categoryItem("Latte", false),
                categoryItem("Americano", false),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            padding: EdgeInsets.all(5),
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page3()),
                  );
                },
                borderRadius: BorderRadius.circular(12),
                child: coffeeItem(
                  "https://png.pngtree.com/png-vector/20230930/ourmid/pngtree-cold-brewed-iced-latte-coffee-on-plastic-cup-side-view-generative-png-image_10154258.png",
                  "Berwed coffee",
                  "Deep foam",
                  "75 EGP",
                ),
              ),
              coffeeItem(
                "https://png.pngtree.com/png-clipart/20250122/original/pngtree-delicious-cappuccino-coffee-cup-with-frothy-latte-art-and-scattered-roasted-png-image_19991380.png",
                "Flat White",
                "Deep foam",
                "85EGP",
              ),
              coffeeItem(
                "https://static.vecteezy.com/system/resources/thumbnails/060/359/385/small/stylized-mug-of-coffee-with-cream-and-honey-soft-lighting-free-png.png",
                "Ceramic Coffee",
                "Deep foam",
                "100 EGP",
              ),
              coffeeItem(
                "https://ms.hsoubcdn.com/uploads/portfolios/3677617/675427d2dd59e/flying-cup-of-coffee.png",
                "Black Coffee",
                "Deep foam",
                "60EGP",
              ),
              coffeeItem(
                "https://png.pngtree.com/png-clipart/20250122/original/pngtree-delicious-cappuccino-coffee-cup-with-frothy-latte-art-and-scattered-roasted-png-image_19991380.png",
                "Flat White",
                "Deep foam",
                "85EGP",
              ),
              coffeeItem(
                "https://png.pngtree.com/png-vector/20230930/ourmid/pngtree-cold-brewed-iced-latte-coffee-on-plastic-cup-side-view-generative-png-image_10154258.png",
                "Berwed coffee",
                "Deep foam",
                "75 EGP",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget categoryItem(String title, bool selected) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: selected
          ? Color.fromARGB(255, 48, 43, 40)
          : const Color.fromARGB(255, 198, 185, 185),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      title,
      style: TextStyle(color: selected ? Colors.white : Colors.black),
    ),
  );
}

Widget coffeeItem(String img, String title, String subtitle, String price) {
  return Container(
    width: 160,
    margin: EdgeInsets.all(12),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 244, 241, 241),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(img, width: 200, height: 160),

        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: const Color.fromARGB(255, 15, 14, 14),
          ),
        ),
        Text(subtitle),
        Text(
          price,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ],
    ),
  );
}
