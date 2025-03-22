import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ContainerController extends GetxController {
  var isContainerVisible = false.obs;  // Observing the boolean state
  void toggleContainerVisibility() {
    isContainerVisible.value = !isContainerVisible.value;
  }
}

class ContainerToggleExample extends StatelessWidget {
  final ContainerController controller = Get.put(ContainerController()); // Initialize the controller

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Now button container
          Container(
            height: mediaQuery.size.height * 0.03,
            width: mediaQuery.size.width * 0.25,
            decoration: BoxDecoration(
              color: Color(0xffB7C6D4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: controller.toggleContainerVisibility, // Toggle visibility
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.circle_notifications,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Text(
                    'Now',
                    style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 14,
                  ),
                ],
              ),
            ),
          ),
          // Conditionally display the second container using GetX
          Obx(() {
            if (controller.isContainerVisible.value) {
              return Container(
                margin: EdgeInsets.only(top: 10),
                height: 100, // Customize this as per your requirement
                width: mediaQuery.size.width * 0.25,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    'Your different data here',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              );
            }
            return Container(); // Return an empty container if not visible
          }),
        ],
      ),
    );
  }
}