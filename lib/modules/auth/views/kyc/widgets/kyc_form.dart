import 'package:cheq/config/config.dart';
import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/input_theme.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/modules/auth/views/auth_widgets.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

kycForm(BuildContext context, GlobalKey formKey) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        /*inputWrapper(textField('bvn',
            hint: "Your BVN",
            textInputType: TextInputType.text
        )),
        const SizedBox(height: 20,),
        inputWrapper(
          textField('id',
            hint: "Means of ID",
            textInputType: TextInputType.emailAddress
          ),
        ),
        const SizedBox(height: 20,),
        inputWrapper(textField('id_number',
            hint: "ID Number",
            textInputType: TextInputType.text
        )),*/
        const SizedBox(height: 20,),
        Container(
          padding: defaultPadding,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.05),
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              width: 1,
              color: TColor.primaryColor.withOpacity(0.1),
              style: BorderStyle.solid
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              showSvg('verify'),
              verticalSpace(32),
              Text("Valid Identification Card", style: heading14Black,),
              verticalSpace(5),
              Text("Tap to upload a valid means of the identification selected above", style: textGrey.copyWith(fontSize: 10),),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 20),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () => "",
            child: const Text('Next'),
          ),
        ),
      ],
    )
  );
}