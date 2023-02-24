import 'package:cheq/config/config.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/helpers/data.dart';
import 'package:cheq/helpers/utils.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

homeHeader(String title, {bool? hasSubtitle, String? subtitle}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      roundContainer(
        height: 32,
        width: 32,
        backgroundColor: TColor.orangeColor,
        child: Center(child: Text('C', style: textBoldWhite.copyWith(
          fontSize: 16, color: TColor.whiteColor
        )))
      ),
      roundContainer(
        height: 32,
        width: 32,
        backgroundColor: TColor.deepBlue,
        child: showSvg('notification', height: 15, width: 15)
      ),
    ],
  );
}

greetingWidget() {
  return Container(
    margin: const EdgeInsets.only(top: 17),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Good morning', style: textDeepBlue16,),
            const SizedBox(width: 3,),
            showSvg('sunshine', height: 15)
          ],
        ),
        Text('Cloudom Systems Limited!', style: textDeepBlue16.copyWith(
          fontWeight: FontWeight.w900
        ),)
      ],
    ),
  );
}

Column inputWrapper(FormBuilderTextField textField, String formTitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(formTitle, style: textDeepBlue),
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
            color: grey100,
            borderRadius: BorderRadius.circular(8)
        ),
        child: textField,
      ),
    ],
  );
}

Container homeSalesCard() {
  return Container(
    width: fullWidth,
    margin: const EdgeInsets.symmetric(vertical: 20),
    padding: defaultPadding,
    decoration: BoxDecoration(
      color: TColor.whiteColor,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                showSvg('activity'),
                const SizedBox(width: 10),
                Text('Sales', style: textDeepBlue.copyWith(
                  fontSize: 16,
                ),)
              ],
            ),
            const SizedBox(height: 15),
            Text("\$2,473,540.00", style: textDeepBlue.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Text('January', style: textGrey),
                horizontalSpace(5),
                showSvg('arrowdown', height: 6)
              ],
            ),
            verticalSpace(20),
            showSvg('chartsquare', height: 20)
          ],
        )
      ],
    ),
  );
}

eachFeatureCard({String? title, Color? bgColor, String? icon}) {
  return GestureDetector(
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: TColor.whiteColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor
            ),
            child: showSvg(icon!, height: 15),
          ),
          Text(title!, style: textDeepBlue.copyWith(
            fontWeight: FontWeight.w500
          ),)
        ],
      ),
    ),
  );
}

homeFeatureCard() {
  return SizedBox(
    height: 350,
    child: GridView.count(
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      crossAxisCount: 3,
      children: [
        eachFeatureCard(title: "Products", icon: 'product', bgColor: TColor.primaryColor.withOpacity(0.2)),
        eachFeatureCard(title: "Purchases", icon: 'purchases', bgColor: Color(0xFFFFEEEE)),
        eachFeatureCard(title: "Sales", icon: 'sales', bgColor: Color(0xFFFFF4E3)),
        eachFeatureCard(title: "Expenses", icon: 'expenses', bgColor: Color(0xFFD7FFE4)),
        eachFeatureCard(title: "Returns", icon: 'returns', bgColor: Color(0xFFCAEAFF)),
        eachFeatureCard(title: "Customers", icon: 'customers', bgColor: Color(0xFFF2F2F2)),
        eachFeatureCard(title: "Suppliers", icon: 'suppliers', bgColor: Color(0xFFFFF4E3)),
        eachFeatureCard(title: "Tax", icon: 'tax', bgColor: Color(0xFFFFEEEE)),
        eachFeatureCard(title: "Reports", icon: 'chartsquare', bgColor: Color(0xFFF2F2F2)),
      ]
    ),
  );
}

buildFeatureList() {
  //List Widget;
  homeFeatures.map((item) => {
    eachFeatureCard(
      //title: item.entries['title']
    )
  });
}