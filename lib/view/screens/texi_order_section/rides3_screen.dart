import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/rides4_screen.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';

class Rides3Screen extends StatefulWidget {
  const Rides3Screen({super.key});

  @override
  State<Rides3Screen> createState() => _Rides1ScreenState();
}

class _Rides1ScreenState extends State<Rides3Screen> {
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
                              GestureDetector(
                                  onTap: () {
                                  // Toggle visibility on tap
                                  containerVisibilityController.toggleContainerVisibility();
                                },
                                child: Text(
                                  'Where to go?',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
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
                CommonButton(text: 'Continue', onPressed: () {
                  Get.to(()=>Rides4Screen());
                }),

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
                                  color: AppColors.primaryColor,
                                 // border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.favorite_border_outlined,color: Colors.white,),
                                    Text('Favorite Place',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                              Divider(),
                              
                             

                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(children: [
                                  Icon(Icons.map_outlined,color: Colors.grey,size: 25,),
                                  SizedBox(width: mediaQuery.width*0.01,),
                                  Text('Set location on map',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),)
                                ],),
                              ),
                              Divider(),
                               Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(children: [
                                  Icon(Icons.location_pin,color: Colors.grey,size: 25,),
                                  SizedBox(width: mediaQuery.width*0.01,),
                                  Text('Jl. Nakulo No 18.A',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),)
                                ],),
                              ),
                               Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                //  SizedBox(width: mediaQuery.width*0.01,),
                                  Text(
  "RT02/RW04, Kec Bumijo\nWieobrajan, Kota Yogyakarta,\n Daerah Isti....",
  style: TextStyle(
    color: Colors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
)

                                ],),
                              )
                            ],
                          )
                        )
                      : SizedBox.shrink(); // Hide container if not visible
                }),
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





