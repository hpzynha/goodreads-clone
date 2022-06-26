import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../helpers/app_colors.dart';
import '../../../widgets/input_widgets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchBooks = TextEditingController();
    return SingleChildScrollView(
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
                        MdiIcons.barcodeScan,
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
    );
  }
}
