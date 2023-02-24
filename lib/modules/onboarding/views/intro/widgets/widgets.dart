import 'package:cheq/modules/onboarding/data/onboarding.dart';
import 'package:flutter/material.dart';

List<Container> buildIntroPages(BuildContext context) {
  List<Container> pageData = [];
  for (var i in pages) {
    pageData.add(Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Image.asset(i['image']),
          const SizedBox(height: 50),
          Text(i['title'],
              style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.w900),
              textAlign: TextAlign.center
          ),
          const SizedBox(height: 20),
          Text(i['caption'],
              //style: textGrey,
              textAlign: TextAlign.center
          ),
        ],
      ),
    ));
  }
  return pageData;
}