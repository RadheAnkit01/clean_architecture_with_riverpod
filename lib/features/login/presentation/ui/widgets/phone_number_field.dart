import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;

  const PhoneNumberField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,

      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],

      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        prefixIcon: const Icon(Icons.phone_outlined),
        prefixText: '+91 ',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Phone number is required';
        }

        if (value.length != 10) {
          return 'Enter a valid 10-digit phone number';
        }

        return null;
      },
    );
  }
}
