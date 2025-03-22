import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/order_running_screen.dart';

class GetDriverScreen extends StatefulWidget {
  const GetDriverScreen({super.key});

  @override
  State<GetDriverScreen> createState() => _GetDriverScreenState();
}

class _GetDriverScreenState extends State<GetDriverScreen> {
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
            height: mediaQuery.height*0.08,
            width: mediaQuery.width*0.97,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.circle),
                    
                    title: Text('Yay! Your driver is on the way!',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                    trailing: Text('in 1 mins',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
                  )
                ),)
        )
        

          ],
        ),
      ),
     bottomSheet: SingleChildScrollView(
       child: Container(
       // height: mediaQuery.height*0.6.h,
        width: mediaQuery.width.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
         
        ),
        child: Column(
          children: [
            SizedBox(height: mediaQuery.height*0.02,),
            Container(
              height: mediaQuery.height*0.07,
              width: mediaQuery.width*0.9,
              decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 0,
                    offset: Offset(0, 0)
                  ),
                 ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.height*0.03,vertical: mediaQuery.height*0.02),
                child: Text('E 1980 Bsy',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              ),
            ),
            SizedBox(height: mediaQuery.height*0.02,),
             Container(
                    height: mediaQuery.height * 0.27,
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
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/cer.png'),
                              SizedBox(width: mediaQuery.width*0.02,),
                              Text('Busyle Ride',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
       
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Image.asset('assets/images/cr1.png'),
                              SizedBox(width: mediaQuery.width * 0.02),
                              Text(
                                "Jl. Nakulo No.22 A",
                                style: TextStyle( fontSize: 16),
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
                                style: TextStyle( fontSize: 16),
                              ),
       
       
                            ],
                          ),
                           Padding(
                           padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.06),
                           child: Text('Sat, 02 Dec, 17:08',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),
                         ),
                          Padding(
                           padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.06),
                           child: Text('Your driver will arrive at the time you scheduled.',style:TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                         ),
                        ],
                      ),
                    ),
                  ),
             
                  SizedBox(height: mediaQuery.height*0.02,),
                  Container(
                    height: mediaQuery.height*0.11,
                    width: mediaQuery.width*0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 0,
                          offset: Offset(0, 0)
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Johan Farid',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              SizedBox(height: mediaQuery.height*0.01,),
                              Row(
                                children: [
                                  Container(
                                    height: mediaQuery.height*0.05,
                                    width: mediaQuery.width*0.1,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Icon(Icons.call,color: Colors.white,),
                                  ),
                                  SizedBox(width: mediaQuery.width*0.02,),
                                  Container(
                                    height: mediaQuery.height*0.05,
                                    width: mediaQuery.width*0.1,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Icon(Icons.message,color: Colors.white,),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Image.asset('assets/images/mi.png')
                        ],
                      ),
                    ),
                  ),
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
                    onTap: (){
                      Get.to(()=>OrderRunningScreen());
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
                  ),
                  SizedBox(height: mediaQuery.height*0.02,)
       
       
          ],
        ),
       ),
     ),
    );
  }
}
