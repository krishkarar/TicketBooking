import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/column_layout.dart';
import 'package:ticket_book/widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(50)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: AppLayout.getWidth(90),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.PNG'))),
              ),
              Gap(AppLayout.getWidth(20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Text(
                    'New Delhi',
                    style: TextStyle(
                        fontSize: AppLayout.getHeight(14),
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: AppLayout.getHeight(15),
                          ),
                        ),
                        Gap(AppLayout.getWidth(8)),
                        const Text(
                          'Premium Status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(AppLayout.getWidth(8)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      // print('Edit is tapped');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade400,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(100),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(18),
                  ),
                ),
              ),
              Positioned(
                right: AppLayout.getHeight(-45),
                top: AppLayout.getHeight(-40),
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: AppLayout.getHeight(25),
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: AppLayout.getHeight(27),
                      ),
                    ),
                    Gap(AppLayout.getWidth(10)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'You have 50 flights this year',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.8),
                              fontSize: AppLayout.getHeight(16)),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated Distance',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      spreadRadius: 1)
                ]),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  '10000',
                  style: TextStyle(
                      fontSize: AppLayout.getHeight(45),
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: AppLayout.getHeight(16),
                      ),
                    ),
                    Text(
                      '28 March 2023',
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: AppLayout.getHeight(16),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(
                  color: Colors.grey.shade400,
                ),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '2342',
                      secondText: 'Kilometres',
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnLayout(
                      firstText: 'Air India',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '24',
                      secondText: 'Kilometres',
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnLayout(
                      firstText: 'KFC',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '5200',
                      secondText: 'Kilometres',
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnLayout(
                      firstText: 'Samsung',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                    )
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(45)),
          InkWell(
            onTap: (){},
            child: Center(
              child: Text(
                'How to get more distance?',
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
