import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';

Container logoUploadWidget (BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(30),
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: TColor.primaryColor.withOpacity(0.05),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 1, color: TColor.primaryColor.withOpacity(0.1))
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        showSvg('upload', height: 30),
        const SizedBox(height: 30,),
        Text('Tap to upload', style: textPrimaryBold,),
      ],
    ),
  );
}