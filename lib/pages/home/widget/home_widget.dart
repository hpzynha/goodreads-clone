import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../helpers/app_colors.dart';
import '../../../widgets/input_widgets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchBooks = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 50.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSearchBar(controller: searchBooks),
                Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: IconButton(
                      icon: Icon(
                        MdiIcons.barcodeScan,
                        color: primaryColor,
                        size: 30,
                      ),
                      onPressed: () {},
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 15.h, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'For You',
                  style: GoogleFonts.roboto(
                      fontSize: 20.sp, fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Text(
                        'See All',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: textColorGreen),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: textColorGreen,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => SizedBox(
                child: Card(
                  child: Center(child: Text('Dummy Card Text')),
                ),
              ),
            ),
          ),
          Text(
            'Demo Headline 2',
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, int) {
                return Card(
                  child: ListTile(
                      title: Text('Motivation $int'),
                      subtitle:
                          Text('this is a description of the motivation')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
