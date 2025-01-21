import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        leading: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 2),
            child: const Text(  // Added const here
              "KUniqlo",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        leadingWidth: 100,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Row(
              children: const [
                Icon(Icons.search),
                SizedBox(width: 20),
                Icon(Icons.shopping_cart),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),  // Added const here
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/details', arguments: "Woman"),
              child: Image.asset(
              'assets/images/Woman.jpg',
              width: screenSize,
              fit: BoxFit.fill
            )
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/details', arguments: "Kid"),
              child: Image.asset(
              'assets/images/Kid.png',
              width: screenSize,
              fit: BoxFit.fill
            )
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/details', arguments: "Men"),
              child: Image.asset(
              'assets/images/Man.png',
              width: screenSize,
              fit: BoxFit.fill
            )
            ),
          ],
        ),
      )
    );
  }
}
