import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/paymen_detail_screen.dart';
import 'package:ride_hailing_app/view/widgtes/horizontal_scroll_widget.dart';
import 'package:ride_hailing_app/view/widgtes/trip_card_widget.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WalletScreen> {
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
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextButton(onPressed: (){
                            Get.back();
                          }, child: Icon(Icons.arrow_back,color: Colors.white,))),
                          SizedBox(height: mediaQuery.height*0.06,),
                      Center(child: Text('Wallet',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
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
                            SizedBox(height: 0,),
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
                                  color: Color(0xff475B8C),
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
                       
                      Container(
                        height: mediaQuery.height*0.22.h,
                        width: mediaQuery.width.w,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          
                              Text('Alam Rafif Alfarizky',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                              SizedBox(height: mediaQuery.height*0.02,),
                              Text('Your Balance',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
                              Text("\$2.885,00",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
                              SizedBox(height: mediaQuery.height*0.02,),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 0),
                           child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Row(
                                children: [
                                  Image.asset('assets/images/splash_logo.png',height: 30,width: 30,),
                                  Text('Busyle Pay',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),)
                                ],
                              ),
                              Container(
                                height: mediaQuery.height*0.048.h,
                                width: mediaQuery.width*0.2.w,
                                decoration: BoxDecoration(
                                  color: Color(0xff475B8C),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: TextButton(onPressed: (){
                                    Get.to(()=>PaymenDetailScreen());
                                  }, child: Text('Top up',style: TextStyle(color: Colors.white,),)),
                                ),
                              ),
                              ],
                            ),
                           )
                            ],
                          ),
                        ),
                      ),
                        //  SizedBox(height: mediaQuery.height*0.02.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Transaction History',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
                              Text('see all',style: TextStyle(color: AppColors.primaryColor,fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                         //SizedBox(height: mediaQuery.height*0.03.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('CGK to CDG: One Way Trip',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                              Text("-\$1.650,00",style: TextStyle(color:Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),),
                       Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Dec 02, 2023  .  08:43:20 AM',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w500),),
                              Text("Busyle Pay",style: TextStyle(color:Colors.grey,fontSize: 13,fontWeight: FontWeight.w500),),
                            ],
                          ),),
                          Divider(color: Colors.grey,),
                            Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('CGK to CDG: One Way Trip',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                              Text("-\$1.650,00",style: TextStyle(color:Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),),
                       Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Dec 02, 2023  .  08:43:20 AM',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w500),),
                              Text("Busyle Pay",style: TextStyle(color:Colors.grey,fontSize: 13,fontWeight: FontWeight.w500),),
                            ],
                          ),),
                          Divider(color: Colors.grey,),
                               Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('CGK to CDG: One Way Trip',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                              Text("-\$1.650,00",style: TextStyle(color:Colors.red,fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),),
                       Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Dec 02, 2023  .  08:43:20 AM',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w500),),
                              Text("Busyle Pay",style: TextStyle(color:Colors.grey,fontSize: 13,fontWeight: FontWeight.w500),),
                            ],
                          ),),
                          Divider(color: Colors.grey,),


                        
                          ],
                        ),
                      ),
                    ),

                  ),
                ),
              ],
            ),

  
         
            
          ],
        ),
      ),
    );
  }
}
