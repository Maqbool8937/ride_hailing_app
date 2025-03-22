import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/wallet_screen.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';

class Rides4Screen extends StatefulWidget {
  const Rides4Screen({super.key});

  @override
  State<Rides4Screen> createState() => _Rides1ScreenState();
}

class _Rides1ScreenState extends State<Rides4Screen> {
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

                // Second Container (Placed Correctly Below the Map)
                Container(
                  height: mediaQuery.height * 0.22,
                  width: mediaQuery.width * 1,
                  decoration: BoxDecoration(
                    color: const Color(0xff475B8C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(height: mediaQuery.height * 0.02),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.08),
                         child: Text('Destination . 2,9 km',style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                       ),

                        Row(
                          children: [
                            Image.asset('assets/images/cr2.png'),
                            SizedBox(width: mediaQuery.width * 0.02),
                            Text(
                              "Jl. Nakulo No.22 A",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),


                          ],
                        ),
                         Padding(
                         padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.06),
                         child: Text('Sat, 02 Dec, 17:08',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                       ),
                        Padding(
                         padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.06),
                         child: Text('Your driver will arrive at the time you scheduled.',style:TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),),
                       ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Choose your car',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                ),
                Container(
                  height: mediaQuery.height*0.2,
                  width: mediaQuery.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/acr.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Small Car',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                           Row(
                             children: [
                              Icon(Icons.person,color: Colors.grey,size: 14,),
                               Text('Small Car',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                             ],
                           ),
                            Row(
                             children: [
                              Icon(Icons.circle_outlined,color: Colors.grey,size: 12,),
                               Text('6-9 mins',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                             ],
                           ),
                           Padding(
                             padding: EdgeInsets.symmetric(horizontal: 5),
                             child: Text('Any car, near you',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                           ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle,color: Colors.blue,size: 13,),
                          Text('Rp14.700',style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.w500),)
                        ],
                      )
                    ],
                  ),
                ),
                 Container(
                  height: mediaQuery.height * 0.22,
                  width: mediaQuery.width * 1,
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
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.camera_alt_outlined,color: Colors.grey,),
                            SizedBox(width: mediaQuery.width * 0.02),
                            Text(
                              "Cash",
                              style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                       
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text('Tap to change',style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.primaryColor),),
                           Row(
                            children: [
                              Icon(Icons.shopping_bag_outlined,color: AppColors.primaryColor,),
                              SizedBox(width: mediaQuery.width*0.01,),
                              Text('Voucher',style:TextStyle(color: AppColors.primaryColor),),
                                                            SizedBox(width: mediaQuery.width*0.01,),

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primaryColor)
                                ),
                                
                                child: Text('-Rp 2RB',style: TextStyle(color: AppColors.primaryColor),)),
                                                              SizedBox(width: mediaQuery.width*0.01,),

                                Icon(Icons.arrow_forward_ios,color: AppColors.primaryColor,size: 18,)
                            ],
                           )
                         ],
                       ),
                        SizedBox(height: mediaQuery.height*0.03,),
                        Row(
                          children: [
                          Icon(Icons.calendar_month_sharp,color: AppColors.primaryColor,size: 35,),
                            SizedBox(width: mediaQuery.width * 0.05),
                           GestureDetector(
                            onTap: (){
                              Get.to(()=>WalletScreen());
                            },
                             child: Container(
                              height: mediaQuery.height*0.07,
                              width: mediaQuery.width*0.7,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Book Car',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                                  Row(
                                    children: [
                                      Text('Rp12.700',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                                      Icon(Icons.arrow_forward,color: Colors.white,)
                                    ],
                                  )
                                ],
                              ),
                             ),
                           )


                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),

              
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}





