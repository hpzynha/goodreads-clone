import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  const CustomSearchBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: 270.w,
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 20.sp),
        decoration: InputDecoration(
            labelText: "Search Books",
            prefixIcon: Icon(
              Icons.search,
              color: primaryColor,
            ),
            filled: true,
            fillColor: backgroundInput,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            focusedBorder: InputBorder.none,
            floatingLabelBehavior: FloatingLabelBehavior.never),
        cursorColor: primaryColor,
      ),
    );
  }
}
