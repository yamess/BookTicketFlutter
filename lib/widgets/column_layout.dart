import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment crossAlignment;

  const AppColumnLayout({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.crossAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAlignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
