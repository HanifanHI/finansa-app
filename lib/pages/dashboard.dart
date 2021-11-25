import 'package:finansa/theme.dart';
import 'package:finansa/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 30,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Dashboard',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/icon-notification.png',
                          width: 24,
                        ),
                        Positioned(
                          top: 0,
                          right: 2,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kOrangeColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 300,
                        height: 190,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage('assets/background-1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Balance',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '\$12,480,209',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 28,
                                  fontWeight: semiBold,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                '••••  ••••  ••••  3901',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 190,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage('assets/background-2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Balance',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '\$12,480,209',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 28,
                                  fontWeight: semiBold,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                '••••  ••••  ••••  3901',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Main Menus',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuItem(
                          imageUrl: 'assets/icon-payment.png',
                          title: 'Top Up',
                        ),
                        MenuItem(
                          imageUrl: 'assets/icon-transfer.png',
                          title: 'Top Up',
                        ),
                        MenuItem(
                          imageUrl: 'assets/icon-bills.png',
                          title: 'Top Up',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuItem(
                          imageUrl: 'assets/icon-withdraw.png',
                          title: 'Top Up',
                        ),
                        MenuItem(
                          imageUrl: 'assets/icon-reward.png',
                          title: 'Top Up',
                        ),
                        MenuItem(
                          imageUrl: 'assets/icon-location.png',
                          title: 'Top Up',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
