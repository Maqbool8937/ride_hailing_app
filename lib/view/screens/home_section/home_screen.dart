import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/promo_ride_detail_screen.dart';
import 'package:ride_hailing_app/view/widgtes/horizontal_scroll_widget.dart';
import 'package:ride_hailing_app/view/widgtes/trip_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none, // Ensures amber container can overflow
          alignment: Alignment.topCenter,
          children: [
            /// ✅ Column for Gradient & White Background
            Column(
              children: [
                /// ✅ Gradient Container (Top Section)
                Container(
                  width: mediaQuery.width,
                  height: mediaQuery.height * 0.25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF475B8C), // Blue
                        Color(0xFF1B5FF1), // Darker Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Row(children: [
                    Image.asset('assets/images/splash_logo.png',height: mediaQuery.height*0.1.h,width: mediaQuery.width*0.1.w,),
                    Text('Busyle',style: TextStyle(color: Colors.white),)

                   ],),
                 ),
                // SizedBox(height: mediaQuery.height*0.01.h,),
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.09.w),
                   child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Welcome, Alam Alfa',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),)),
                 ),
                  Padding(
                   padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.09.w),
                   child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Let’s start your journey',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),)),
                 )

                    ],
                  )
                ),

                /// ✅ White Background (Remaining Part of the Screen)
                Expanded(
                  child: Container(
                    width: mediaQuery.width.w,
                    color: Color(0xffE8EDEF),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03.w),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 50,),
                           Container(
                          height: mediaQuery.height * 0.09, // Increased height for better spacing
                          width: mediaQuery.width * 0.9,
                          padding: EdgeInsets.symmetric(horizontal: 10), // ✅ Added padding
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black.withOpacity(0.2)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: Image.asset('assets/images/cc.png'),// ✅ Leading icon
                            title: Text(
                              "Your Wallet", 
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              "Balance: Rp0", 
                              style: TextStyle(color: Colors.red,fontSize: 12,fontWeight: FontWeight.w400),
                            ),
                            trailing:  Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Container(
                                height: mediaQuery.height*0.048.h,
                                width: mediaQuery.width*0.2.w,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: TextButton(onPressed: (){}, child: Text('Top up',style: TextStyle(color: Colors.white,),)),
                                ),
                              ),
                            )
                          ),
                        
                        ),
                        SizedBox(height: mediaQuery.height*0.03.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Services',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),),
                              GestureDetector(
                                onTap:(){
                                  Get.off(()=>PromoRideDetailScreen());
                                } ,
                                child: Text('see all',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),)),
                            ],
                          ),
                        ),
                         SizedBox(height: mediaQuery.height*0.01.h,),
                         HorizontalScrollList(),
                        //  SizedBox(height: mediaQuery.height*0.02.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('History',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),),
                              Text('see all',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                         SizedBox(height: mediaQuery.height*0.03.h,),
                         TripCard(
  dateTime: "2 Dec, 17:08",
  location: "Nitiprayan Street No. 22A",
  imagePath: "assets/images/car1.png",
  tripStatus: "Trip completed",
  price: "Rp11.000",
  onRepeat: () {
    // Handle repeat trip action
  },
),
 SizedBox(height: mediaQuery.height*0.02.h,),
TripCard(
  dateTime: "2 Dec, 17:08",
  location: "Nitiprayan Street No. 22A",
  imagePath: "assets/images/car1.png",
  tripStatus: "Trip completed",
  price: "Rp11.000",
  onRepeat: () {
    // Handle repeat trip action
  },
),


                        
                          ],
                        ),
                      ),
                    ),

                  ),
                ),
              ],
            ),

            /// ✅ Amber Container (Half on Gradient, Half on White)
            Positioned(
              top: mediaQuery.height * 0.25 - (mediaQuery.height * 0.035), // Moves it halfway
              child: Container(
  height: mediaQuery.height * 0.07,
  width: mediaQuery.width * 0.9,
  padding: EdgeInsets.symmetric(horizontal: 15), // ✅ Added padding
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(color: Colors.black.withOpacity(0.2)),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 6,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: TextField(
    decoration: InputDecoration(
      
      labelText: 'Your Address',
      labelStyle: TextStyle(color: Colors.grey),
      //hintText: 'Enter Your Address', // ✅ Improved hint text
      hintStyle: TextStyle(color: Colors.black54),
      border: InputBorder.none, // ✅ Removed default border
      //prefixIcon: Icon(Icons.location_on, color: Colors.grey), // ✅ Added icon
    ),
    textInputAction: TextInputAction.done, // ✅ Allows keyboard to close
    style: TextStyle(fontSize: 16), // ✅ Better text size
  ),
)

            ),
            
          ],
        ),
      ),
    );
  }
}
