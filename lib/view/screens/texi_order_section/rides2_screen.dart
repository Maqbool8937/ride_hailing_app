import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/rides3_screen.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';

class Rides2Screen extends StatefulWidget {
  const Rides2Screen({super.key});

  @override
  State<Rides2Screen> createState() => _Rides1ScreenState();
}

class _Rides1ScreenState extends State<Rides2Screen> {
  TextEditingController secpasswordController = TextEditingController();
  TextEditingController secConfirmPasswordController = TextEditingController();

  // GetX controller for toggling visibility
  final containerVisibilityController = Get.put(ContainerVisibilityController());

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mediaQuery.width * 0.0.w,
                vertical: mediaQuery.height * 0.001.h),
            child: Column(
              children: [
                // Back Button & Title
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          IconButton(
                            alignment: Alignment.topLeft,
                            icon: const Icon(Icons.arrow_back, color: Colors.grey),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                          const Text(
                            'Ride',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                //      IconButton(onPressed: (){
                //   Get.to(()=>Rides3Screen());
                //  }, icon: Icon(Icons.arrow_forward)),
                  ],
                ),
                
                // Map Image
                Container(
                  height: mediaQuery.height * 0.38.h,
                  width: mediaQuery.width * 1.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/map1.png'),
                      fit: BoxFit.cover, // Ensure full coverage
                    ),
                  ),
                ),

                // Second Container (Placed Correctly Below the Map)
                Container(
                  height: mediaQuery.height * 0.2,
                  width: mediaQuery.width * 1,
                  decoration: BoxDecoration(
                    color: const Color(0xff475B8C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/cr1.png'),
                            SizedBox(width: mediaQuery.width * 0.02),
                            Text(
                              "Jl. Nakulo No.22 A",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: mediaQuery.height * 0.07),
                        Container(
                          height: mediaQuery.height * 0.07,
                          width: mediaQuery.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 0,
                                offset: Offset(0, 0),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Where to go?',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Toggle visibility on tap
                                  containerVisibilityController.toggleContainerVisibility();
                                },
                                child: Container(
                                  height: mediaQuery.height * 0.03,
                                  width: mediaQuery.width * 0.25,
                                  decoration: BoxDecoration(
                                    color: Color(0xffB7C6D4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
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
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.grey,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.04),

              
                // Other Content
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.02, vertical: mediaQuery.height * 0.02),
                  child: Row(
                    children: [
                      Container(
                        height: mediaQuery.height * 0.1,
                        width: mediaQuery.width * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 0,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Center(
                          child: Image.asset('assets/images/car1.png'),
                        ),
                      ),
                      SizedBox(width: mediaQuery.width * 0.01),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Order your first ride with us',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            'Cash or cashless payment,\nthe choice is yours',
                            style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // CommonButton
                // CommonButton(text: 'Continue', onPressed: () {
                //   Get.to(()=>Rides3Screen());
                // }),

                // This is where the container appears below the GestureDetector when tapped
                Obx(() {
                  return containerVisibilityController.isContainerVisible.value
                      ? Container(
                          margin: EdgeInsets.only(top: mediaQuery.height * 0.02), // Added small gap
                         // height: mediaQuery.height * 0.3, // Adjusted height
                          width: mediaQuery.width * 0.7, // Adjust width to match design
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                 spreadRadius: 0,
                                 offset: Offset(0, 0)
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: mediaQuery.height*0.02,),
                              Container(
                                height: mediaQuery.height*0.07,
                                width: mediaQuery.width*0.6,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: ListTile(
                                    leading: Icon(Icons.calendar_month),
                                    title: Text('Today'),
                                    trailing: Icon(Icons.arrow_drop_down_outlined),
                                  ),
                                ),
                              ),
                              SizedBox(height: mediaQuery.height*0.01,),
                               Container(
                                height: mediaQuery.height*0.07,
                                width: mediaQuery.width*0.6,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: ListTile(
                                    leading: Icon(Icons.watch_later_outlined),
                                    title: Text('Now'),
                                    trailing: Icon(Icons.arrow_drop_down_outlined),
                                  ),
                                ),

                              ),

                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(children: [
                                  Icon(Icons.calendar_month_outlined,color: Colors.grey,size: 25,),
                                  SizedBox(width: mediaQuery.width*0.01,),
                                  Text('Choose your pickup time up to 30 days\n in advance',style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w400),)
                                ],),
                              ),
                               Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(children: [
                                  Icon(Icons.time_to_leave_outlined,color: Colors.grey,size: 25,),
                                  SizedBox(width: mediaQuery.width*0.01,),
                                  Text('Extra wait time included to meet your \nride',style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w400),)
                                ],),
                              ),
                               Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(children: [
                                  Icon(Icons.cancel_outlined,color: Colors.grey,size: 25,),
                                  SizedBox(width: mediaQuery.width*0.01,),
                                  Text('Cancel at no charge up to 60 minutes \nin advance',style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w400),)
                                ],),
                              )
                            ],
                          )
                        )
                      : SizedBox.shrink(); // Hide container if not visible
                }),
                //   CommonButton(text: 'Continue', onPressed: () {
                //   Get.to(()=>Rides3Screen());
                // }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// GetX Controller to handle visibility
class ContainerVisibilityController extends GetxController {
  var isContainerVisible = false.obs;

  // Toggle the visibility state
  void toggleContainerVisibility() {
    isContainerVisible.value = !isContainerVisible.value;
  }
}





