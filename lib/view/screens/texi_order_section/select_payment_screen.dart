import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';

class SelectPaymentScreen extends StatefulWidget {
  const SelectPaymentScreen({super.key});

  @override
  State<SelectPaymentScreen> createState() => _Rides1ScreenState();
}

class _Rides1ScreenState extends State<SelectPaymentScreen> {
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
                        'Select a payment method',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
             ListTile(
              leading: Image.asset('assets/images/igm.png'),
              title: Text('Busyle Coins',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              subtitle: Text('Balance: 0',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
             ),
            Divider(
  color: Colors.grey,
  indent: 10.0, // Adds space at the start of the divider
  endIndent: 10.0, // Adds space at the end of the divider
),

               ListTile(
              leading: Image.asset('assets/images/igm.png'),
              title: Text('Busyle Pay',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              subtitle: Text('Low Balance: Rp2.983',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.red),),
              trailing: Container(
                height: mediaQuery.height*0.05,
                width: mediaQuery.width*0.2,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text('Top up',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),)),
              ),
             ),
             Divider(
              color: Colors.grey,
             indent: 10,
             endIndent: 10,
             ),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Add methods',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
             ),
              ListTile(
              leading: Image.asset('assets/images/card1.png'),
              title: Text('Credit or debit cars',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              subtitle: Text('Visa, Mastercard, AMEX, and JCB',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
              trailing: Container(
                height: mediaQuery.height*0.037,
                width: mediaQuery.width*0.08,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Icon(Icons.add,color: Colors.white,),),
              ),
             ),
              ListTile(
              leading: Image.asset('assets/images/card2.png'),
              title: Text('Paypal',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              subtitle: Text('Visa, Mastercard, AMEX, and JCB',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
              trailing: Container(
                height: mediaQuery.height*0.037,
                width: mediaQuery.width*0.08,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Icon(Icons.add,color: Colors.white,),),
              ),
             ),
              ListTile(
              leading: Image.asset('assets/images/card3.png'),
              title: Text('Wise',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              subtitle: Text('Visa, Mastercard, AMEX, and JCB',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
              trailing: Container(
                height: mediaQuery.height*0.037,
                width: mediaQuery.width*0.08,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Icon(Icons.add,color: Colors.white,),),
              ),
             ),
              Divider(
              color: Colors.grey,
             indent: 10,
             endIndent: 10,
             ),
              
               Padding(
               padding: const EdgeInsets.all(12.0),
               child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Other payment method',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
             ),
              
               ListTile(
              leading: Icon(Icons.camera_alt_outlined),
              title: Text('Cash',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              //subtitle: Text('Visa, Mastercard, AMEX, and JCB',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
              trailing:Icon(Icons.circle_outlined,color: Colors.grey,)
             ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





