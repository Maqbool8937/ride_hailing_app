import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_hailing_app/controllers/bottom_navbar_controller.dart';
import 'package:ride_hailing_app/view/screens/home_section/home_screen.dart';
import 'package:ride_hailing_app/view/screens/wallet_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final BottomNavController controller = Get.put(BottomNavController());

  final List<Widget> pages = [
    HomeScreen(),
   WalletScreen(),
    Center(child: Text('Read')),
    Center(child: Text('Fav')),
    Center(child: Text('Person')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.selectedIndex.value,
            children: pages,
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.chrome_reader_mode), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          )),
    );
  }
}
