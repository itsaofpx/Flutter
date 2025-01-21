import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});


  @override
  Widget build(BuildContext context) {
    final genre = ModalRoute.of(context)!.settings.arguments as String;
    final List<Map<String, dynamic>> productList = genre == 'Woman'
        ? Woman
        : genre == 'Kid'
            ? Kid
            : Men;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        leading: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 2),
            child: const Text(
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
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: const Icon(Icons.search),
                ),
                const SizedBox(width: 20),
                const Icon(Icons.shopping_cart),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              genre,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.5,
              ),
              padding: const EdgeInsets.all(8.0),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final product = productList[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                                "assets/images/${product['image']}",
                                fit: BoxFit.fill,
                              )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product['description'],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'THB ${product['price'].toString()}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Product lists with consistent data structure
final List<Map<String, dynamic>> Woman = [
  {'description': 'Short Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
  {'description': 'Long Sleeve T-Shirt', 'price': 790.00, 'image': 'Woman.jpg'},
];

final List<Map<String, dynamic>> Men = [
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
  {'description': 'AIRism Cotton Oversized', 'price': 590.00, 'image': 'Man.png'},
];

final List<Map<String, dynamic>> Kid = [
  {'description': 'AIRism Cotton Graphic', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'Graphic Short Sleeve', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'AIRism Cotton Graphic', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'Graphic Short Sleeve', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'AIRism Cotton Graphic', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'Graphic Short Sleeve', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'AIRism Cotton Graphic', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'Graphic Short Sleeve', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'AIRism Cotton Graphic', 'price': 390.00, 'image': 'Kid.png'},
  {'description': 'Graphic Short Sleeve', 'price': 390.00, 'image': 'Kid.png'},
];
