import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryPickerWidget extends StatelessWidget {
  final TextEditingController controller;

  const CountryPickerWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10), // Added padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: IntlPhoneField(
        controller: controller,
        decoration: InputDecoration(
          labelText: 'Phone Number',
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 12), // Adjusted padding
        ),
        initialCountryCode: 'US',
        dropdownIconPosition: IconPosition.trailing, // Moves dropdown between flag and number
        disableLengthCheck: true, // Prevents validation issues
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }
}
