import 'package:flutter/material.dart';

class GenericTextField extends TextFormField {
  
  GenericTextField(
      {Key? key,
      TextEditingController? controller,
      Icon? icon,
      String? Function(String? value)? validator,
      bool obscureText = false,
      void Function(String)? onChanged})
      : super(
            key: key,
            onChanged: onChanged,
            validator: validator ,
            obscureText: obscureText,
            decoration: InputDecoration(
              icon: icon,
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            controller: controller);
}
