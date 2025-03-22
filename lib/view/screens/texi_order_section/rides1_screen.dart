import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/rides2_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/rides3_screen.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';

class Rides1Screen extends StatefulWidget {
  const Rides1Screen({super.key});

  @override
  State<Rides1Screen> createState() => _Rides1ScreenState();
}

class _Rides1ScreenState extends State<Rides1Screen> {
  TextEditingController secpasswordController = TextEditingController();
  TextEditingController secConfirmPasswordController = TextEditingController();

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

               // SizedBox(height: 10.h), // Spacing between map and next container

                // Second Container (Placed Correctly Below the Map)
                Container(
                  height: mediaQuery.height*0.22,
                  width: mediaQuery.width * 1,
                  padding: EdgeInsets.all(16.w),
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
                            SizedBox(width: mediaQuery.width*0.02,),
                             Text(
                              "Jl. Nakulo No.22 A",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                    
                                                   ),
                                                  
                           ],
                         ),
                          SizedBox(height: mediaQuery.height*0.05,),
                                                   Container(
                                                    height: mediaQuery.height*0.07,
                                                    width: mediaQuery.width*0.9,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(20),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 2,
                                                          spreadRadius: 0,
                                                          offset: Offset(0, 0)
                                                        )
                                                      ]
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                        Text('Where to go?',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),

                                                        Container(
                                                          height: mediaQuery.height*0.03,
                                                          width: mediaQuery.width*0.25,
                                                          decoration: BoxDecoration(
                                                            color: Color(0xffB7C6D4),
                                                            borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                            children: [
                                                              Icon(Icons.circle_notifications,color: Colors.grey,size: 20,),
                                                              Text('Now',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                                                              Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 14,)
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                   ),
                                                  
                      ],
                    ),
                  ),
                ),

                SizedBox(height: mediaQuery.height*0.04,),
                                                   Padding(
                                                     padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03),
                                                     child: Row(
                                                      children: [
                                                        Container(
                                                          height: mediaQuery.height*0.1,
                                                          width: mediaQuery.width*0.25,
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
                                                          child: Center(
                                                            child: Image.asset('assets/images/car1.png'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Column(
                                                            children: [
                                                              Text('Order your first ride with us',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                                          
                                                              Text(textAlign: TextAlign.center,'Cash or cashless payment,the\n choice is yours',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),)
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                     ),
                                                   ),
                                                   SizedBox(height: mediaQuery.height*0.06,),
                                                   CommonButton(text: 'Continue', onPressed: (){
                                                    Get.to(()=>Rides3Screen());
                                                   })

              ],
            ),
          ),
        ),
      ),
    );
  }
}
