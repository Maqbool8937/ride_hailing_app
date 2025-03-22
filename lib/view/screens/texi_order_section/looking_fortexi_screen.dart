import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/get_driver_screen.dart';

class LookingFortexiScreen extends StatefulWidget {
  const LookingFortexiScreen({super.key});

  @override
  State<LookingFortexiScreen> createState() => _LookingFortexiScreenState();
}

class _LookingFortexiScreenState extends State<LookingFortexiScreen> {
  TextEditingController secpasswordController = TextEditingController();
  TextEditingController secConfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            
         Image.asset('assets/images/mp.png'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.02,vertical: mediaQuery.height*0.07),
          child: Container(
            height: mediaQuery.height*0.1,
            width: mediaQuery.width*0.97,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Looking for a Taxi for you',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Text('One moment please...',style:TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.height*0.02,),
                Container(
                  height: mediaQuery.height*0.01,
                  width: mediaQuery.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
          ),
        )
        

          ],
        ),
      ),
     bottomSheet: Container(
      height: mediaQuery.height*0.4.h,
      width: mediaQuery.width.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
       
      ),
      child: Column(
        children: [
          SizedBox(height: mediaQuery.height*0.02,),
            Container(
                  height: mediaQuery.height*0.15,
                  width: mediaQuery.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 0)
                      )
                    ],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/acr.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Finding a taxi for you...',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue),),
                          Text('We got your taxi booking',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                                
                        ],
                      ),
                     
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.height*0.02,),
                 Container(
                  height: mediaQuery.height*0.08,
                  width: mediaQuery.width*0.9,
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
                  child: ListTile(
                    leading: Image.asset('assets/images/ri1.png'),
                    title: Text('Cash/QRIS',style: TextStyle(color: Color(0xff475B8C),fontSize: 14,fontWeight: FontWeight.w500),),
                 subtitle: Text('Tap to change',style: TextStyle(color:Color(0xff475B8C),fontSize: 10,fontWeight: FontWeight.w400 ),),
                 trailing: Text('Rp12.700',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                  )
                ),
                SizedBox(height: mediaQuery.height*0.02,),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>GetDriverScreen());
                  },
                  child: Container(
                    height: mediaQuery.height*0.07,
                    width: mediaQuery.width*0.9,
                    decoration: BoxDecoration(
                      color: Colors.redAccent.shade100,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('Cancel booking',style: TextStyle(color: Color(0xffB50000,),fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                  ),
                )


        ],
      ),
     ),
    );
  }
}
