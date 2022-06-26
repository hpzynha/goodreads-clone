import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodreads/widgets/input_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../helpers/app_colors.dart';

class HomeExploreWidget extends StatelessWidget {
  const HomeExploreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchBooks = TextEditingController();
    return Scaffold(body: Center(child: Text('explore')));
  }
}
