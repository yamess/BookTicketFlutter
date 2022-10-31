import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Flutter DB", style: Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text("Passenger", style: Styles.headLineStyle3,),
      ],
    );
  }
}
