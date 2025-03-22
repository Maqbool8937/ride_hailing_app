import 'package:flutter/material.dart';

class HorizontalScrollList extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'image': 'assets/images/car1.png', 'title': 'Ride'},
    {'image': 'assets/images/car2.png', 'title': 'Rent'},
    {'image': 'assets/images/car3.png', 'title': 'Delivery'},
    {'image': 'assets/images/plane1.png', 'title': 'Flight'},
    {'image': 'assets/images/car1.png', 'title': 'Ride'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, // ✅ Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // ✅ Horizontal scrolling
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  
                  backgroundColor: Colors.white,
                  radius: 35, // ✅ Circle size
                  backgroundImage: AssetImage( items[index]['image']!,),
                  
                ),
                SizedBox(height: 5), // ✅ Spacing between image & text
                Text(
                  items[index]['title']!,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
