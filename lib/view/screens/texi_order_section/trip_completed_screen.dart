
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';

class TripCompletedScreen extends StatefulWidget {
  const TripCompletedScreen({super.key});

  @override
  State<TripCompletedScreen> createState() => _GetDriverScreenState();
}

class _GetDriverScreenState extends State<TripCompletedScreen> {
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
            child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.circle),
                    
                    title: Text('Trip completed!',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                    trailing: Text('arrived in 20 mins',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
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
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Taxi Ride',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:mediaQuery.width*0.02),
                      child: Row(children: [
                        Icon(Icons.circle,size: 15,),
                        Text('Trip completed',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),)
                      ],),
                    ),
             
                  ],
                ),
                Column(
                  children: [
                    Text('02 Dec, 17:08 PM',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey),),
                    
                    Text('Transaction RB-1768384-0904280',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey),),
                  ],
                )
              ],
             ),
           ),
           Divider(color: Colors.blue, endIndent: 10,indent: 10,),
           Column(
            children: [
              Text('How was the driver?',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
             Image.asset('assets/images/strt.png')
            ],
           ),
            Divider(color: Colors.grey, endIndent: 10,indent: 10,),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/mi.png'),),
              title: Text('Johan Farid',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              subtitle: Row(
                children: [
                  Text('Agya White'),
                VerticalDivider(),
                  Text('E980Bsy')
                ],
              ),
              trailing:  Container(
                                    height: mediaQuery.height*0.05,
                                    width: mediaQuery.width*0.1,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Icon(Icons.call,color: Colors.white,),
                                  ),
              // trailing:  Row(
              //                   children: [
                                 
              //                     SizedBox(width: mediaQuery.width*0.02,),
              //                     Container(
              //                       height: mediaQuery.height*0.05,
              //                       width: mediaQuery.width*0.1,
              //                       decoration: BoxDecoration(
              //                         color: Colors.blue,
              //                         borderRadius: BorderRadius.circular(20)
              //                       ),
              //                       child: Icon(Icons.message,color: Colors.white,),
              //                     ),
              //                   ],
              //                 ),
            ),
            Divider(),
            Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                                    SizedBox(width: mediaQuery.width*0.02,),
                          Text('Trip Details',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey),),
                        SizedBox(height: mediaQuery.height*0.02,),
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
                          
                        ],
                      ),
                    ),
                      Divider(),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Payment Details',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),)),
             ),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Trip fare',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                 Text('Rp11.000',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),)
               ],),
             ),
              Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Trip fare',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                 Text('Rp11.000',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),)
               ],),
             ),
              Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Trip fare',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                 Text('Rp11.000',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),)
               ],),
             ),
              Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Trip fare',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                 Text('Rp11.000',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),)
               ],),
             ),
             SizedBox(height: mediaQuery.height*0.02,),
             CommonButton(text: 'Download bill', onPressed: (){}),
             SizedBox(height: mediaQuery.height*0.02,),

                 
                  
                  // Container(
                  //   height: mediaQuery.height*0.08,
                  //   width: mediaQuery.width*0.1,
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.circular(10)
                  //   ),
                  // )
                
               
       
       
          ],
        ),
       ),
     ),
    );
  }
}
