import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.text, this.onChagned,this.obscuretext= false});

  final Function(String)? onChagned;
  final String text;
   final bool?  obscuretext ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: TextFormField(
        obscureText:obscuretext!  ,
        validator: (data) {
          if (data!.isEmpty) {
            return " that field is required ";
          }
        },
        onChanged: onChagned,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.white),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
