import 'package:bootickets/screens/ticket_view.dart';
import 'package:bootickets/utils/app_layout.dart';
import 'package:bootickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcomin", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              )
            ],
          )
        ],
      ),
    );
  }
}
