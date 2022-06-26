import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodreads/helpers/app_colors.dart';
import 'package:goodreads/widgets/input_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchBooks = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSearchBar(controller: _searchBooks),
                  Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: IconButton(
                        icon: Icon(
                          Icons.qr_code_scanner,
                          color: primaryColor,
                          size: 30,
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
