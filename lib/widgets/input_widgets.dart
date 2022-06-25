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
        decoration: InputDecoration(
            labelText: "Search Books",
            prefixIcon: Icon(
              Icons.search,
              color: primaryColor,
            ),
            fillColor: backgroundInput,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)))),
      ),
    );
  }
}
