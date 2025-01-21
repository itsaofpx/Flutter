import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LuckyColor extends StatelessWidget {
  const LuckyColor({super.key});

  Color dayToColor(String day) {
    switch (day) {
      case "Monday":
        return Colors.purple;
      case "Tuesday":
        return Colors.orange;
      case "Wednesday":
        return Colors.white;
      case "Thursday":
        return Colors.red;
      case "Friday":
        return Colors.pink;
      case "Saturday":
        return Colors.blue;
      default:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    String now = DateFormat.EEEE().format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 151, 193, 1),
        leading: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Text(
                "Today is $now.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "Lucky shirt color is",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 100,
            width: 100,
            decoration: BoxDecoration(color: dayToColor(now)),
          ),
        ],
      ),
    );
  }
}