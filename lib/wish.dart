import 'package:flutter/material.dart';

class Wish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 5),
            child: const Text(
              "Tech Company",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        leadingWidth: 150,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(Icons.shopping_cart, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
      body: const _WishList(),
    );
  }
}

class WishItem {
  final String imagePath;
  final String title;
  final String description;

  WishItem({required this.imagePath, required this.title, required this.description});
}

class _WishList extends StatelessWidget {
  const _WishList();

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: const Center(
            child: Text(
              "Wishlist",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(5),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return _WishListItem(item: items[index]);
            },
          ),
        ),
      ],
    );
  }
}

class _WishListItem extends StatelessWidget {
  final WishItem item;

  const _WishListItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              item.imagePath,
              fit: BoxFit.fill,
              height: 100,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    item.title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Text(item.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final items = [
      WishItem(imagePath: "assets/images/agoda.png", title: "Agoda", description: "Full-Stack Developer"),
      WishItem(imagePath: "assets/images/SCB.png", title: "SCB", description: "Software Developer"),
      WishItem(imagePath: "assets/images/XOM.jpeg", title: "Exxon Mobil", description: "Software Developer"),
      WishItem(imagePath: "assets/images/Robinhood.jpeg", title: "Robinhood", description: "Full-Stack Developer"),
      WishItem(imagePath: "assets/images/LWN.jpg", title: "LineManxWongNai", description: "Full-Stack Developer"),
];