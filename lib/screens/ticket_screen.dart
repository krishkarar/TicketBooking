import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_book/screens/ticket_view.dart';
import 'package:ticket_book/utils/app_info_list.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Gap(AppLayout.getHeight(3)),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Kushagra Karar',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: '123456789',
                          secondText: 'Passport ID',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: '69420786',
                          secondText: 'E Ticket Number',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: '22162017',
                          secondText: 'Booking ID',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.PNG',
                                  scale: 8,
                                ),
                                Text(
                                  ' *** 2462',
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Payment Method',
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: 'Rs.4000',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(3)),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      AppLayout.getWidth(21),
                    ),
                    bottomRight: Radius.circular(
                      AppLayout.getWidth(21),
                    ),
                  ),
                ),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: AppLayout.getHeight(70),
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(19),
            top: AppLayout.getHeight(400),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: AppLayout.getWidth(2),
                ),
              ),
              child: CircleAvatar(
                maxRadius: AppLayout.getWidth(4),
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(19),
            top: AppLayout.getHeight(400),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: AppLayout.getWidth(2),
                ),
              ),
              child: CircleAvatar(
                maxRadius: AppLayout.getWidth(4),
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
