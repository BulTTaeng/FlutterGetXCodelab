import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget
{
  late String str;
  TextEditingController controller;
  bool obsc;
  Size size;

  CustomTextForm({
    Key? key,
    required this.str,
    required this.controller,
    required this.obsc,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.width-80,
        height: size.height/10,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: TextFormField
            (
            validator: (value)
            {
              if (value == null || value.isEmpty) {
                return '아이디를 입력해 주세요';
              }
              return null;
            },
            controller: controller,
            obscureText: obsc,
            decoration: InputDecoration(
              filled: false,
              labelText: str,
            ),
          ),
        )
    );
  }
}