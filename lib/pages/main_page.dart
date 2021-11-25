import 'package:finansa/pages/dashboard.dart';
import 'package:finansa/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  color: kWhiteColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Image.asset(
                            'assets/image-google.png',
                            width: 60,
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Google Drive',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: medium,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/icon-check.png',
                                width: 16,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '12.30 PM',
                            style: greyTextStyle,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            '- \$20,500',
                            style: blackTextStyle.copyWith(
                              fontSize: 28,
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'CloudOne 10GB',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              Text(
                                '\$15,000',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Workspace',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              Text(
                                '\$500',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Stream Maxx',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              Text(
                                '\$5,000',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: kPurpleColor,
                            ),
                            child: Center(
                              child: Text(
                                'Ok, Close',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        child: Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.only(bottom: 25),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/icon-scan.png'),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          DashboardPage(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 60,
              color: kWhiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/icon-home.png',
                    width: 24,
                  ),
                  Image.asset(
                    'assets/icon-calendar.png',
                    width: 24,
                  ),
                  SizedBox(),
                  Image.asset(
                    'assets/icon-briefcase.png',
                    width: 24,
                  ),
                  Image.asset(
                    'assets/icon-settings.png',
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
