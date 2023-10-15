import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:park_elm_fanavari/colors.dart';
import 'package:park_elm_fanavari/image_string.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff222222),
            height: 20 / 12,
          ),
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xff1f0990),
            height: 20 / 12,
          ),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff1f0990),
          items: [
            bottomNavigationBarItembuilder(
              icon: const Icon(Icons.more_horiz_outlined),
              label: 'منو بیشتر',
              activatedIcon:
                  const CustumMoreIcon(), //! custom 'more' icon when it's actived
            ),
            bottomNavigationBarItembuilder(
              icon: const Icon(Icons.person_outline_rounded),
              label: 'اطلاعات من',
              activatedIcon: const Icon(Icons.person),
            ),
            bottomNavigationBarItembuilder(
              icon: const Icon(Icons.notifications_none_outlined),
              label: 'اطلاع رسانی',
              activatedIcon: const Icon(Icons.notifications),
            ),
            bottomNavigationBarItembuilder(
              icon: const Icon(Icons.home_outlined),
              label: 'داشبورد من',
              activatedIcon: const Icon(Icons.home),
            )
          ],
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: ListView(
              children: [
                HeaderStackWidget(
                    screenWidth: screenWidth), //! Header Stack Widget
                const SizedBox(height: 30),
                //! 1# list------------------------------------------------
                Padding(
                  padding: EdgeInsets.all(
                    (screenWidth < 433) ? 0.05 * screenWidth : 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'تکمیل فرم پذیرش مرکز رشد',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: (screenWidth < 433)
                                    ? 0.030 * screenWidth
                                    : 14,
                              ),
                            ),
                            InkWell(
                              onTap: () =>
                                  (Uri.parse('https://www.google.com')),
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 4),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff1f0990),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'دریافت فرم پذیرش ایده محوری',
                                  style: TextStyle(
                                    color: const Color(0xff1f0990),
                                    fontSize: (screenWidth < 433)
                                        ? 0.030 * screenWidth
                                        : 14,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //! My Stacked Icons List View 1#
                      MyStackedIconsListView(
                        backImage: backRoundHeadIcon,
                        sizeOfBackIcon:
                            (screenWidth < 433) ? 0.09 * screenWidth : 40,
                        backColor: cGrayGreenBackIcon,
                        sizeOfFrontIcon:
                            (screenWidth < 433) ? 0.09 * screenWidth : 40,
                        frontImage: Icon(
                          Icons.check_circle_outline_rounded,
                          color: cGreenCheckIcon,
                          size: (screenWidth < 433) ? 0.09 * screenWidth : 35,
                        ),
                        frontPositionVertical: -12,
                        frontPositionHorizantal: -12,
                        sizedBoxHeight: 0,
                      ),
                    ],
                  ),
                ),
                //! 2# list------------------------------------------------
                Padding(
                  padding: EdgeInsets.all(
                      (screenWidth < 433) ? 0.05 * screenWidth : 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                  width: (screenWidth < 433)
                                      ? 0.09 * screenWidth
                                      : 40,
                                  child: SvgPicture.asset(sandWatchIcon)),
                              const SizedBox(height: 40)
                            ],
                          ),
                          SizedBox(
                            width: (() {
                              if (screenWidth >= 406) {
                                return 60.0;
                              } else if (screenWidth < 406) {
                                return screenWidth * 0.147;
                              }
                            }()),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              (screenWidth >= 543
                                  ? 'ارزیابی اولبه طرح ایده محوری توسط کارشناس فنی'
                                  : 'ارزیابی اولبه طرح ایده محوری توسط\n کارشناس فنی'),
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            ),
                            Text(
                              (screenWidth >= 608
                                  ? 'مشاوره علمی و نظارت اعضای هیأت علمی و کارشناسان با تجربه' //todo this part of cannot summerise to fewer lines!
                                  : 'مشاوره علمی و نظارت اعضای هیأت\n  علمی و کارشناسان با تجربه'), //todo this part of cannot summerise to fewer lines!
                              maxLines: 10,
                              softWrap: true,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff3b3b3b),
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            )
                          ],
                        ),
                      ),
                      //! My Stacked Icons List View 2#
                      MyStackedIconsListView(
                        backImage: backRoundHeadIcon,
                        sizeOfBackIcon:
                            (screenWidth < 433) ? 0.09 * screenWidth : 40,
                        backColor: csecondary,
                        sizeOfFrontIcon:
                            (screenWidth < 433) ? 0.09 * screenWidth : 40,
                        frontImage: SvgPicture.asset(iconSearch),
                        frontPositionVertical: -12,
                        frontPositionHorizantal: -6,
                        sizedBoxHeight: 20,
                      )
                    ],
                  ),
                ),
                //! 3# list------------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'ارسال طرح به داور فنی واقتصادی',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff626262),
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            ),
                            Text(
                              (screenWidth >= 543
                                  ? 'مشاوره علمی و نظارت اعضای هیأت علمی و کارشناسان با تجربه' //todo this part of cannot summerise to fewer lines!
                                  : 'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه'), //todo this part of cannot summerise to fewer lines!
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: const Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500,
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            )
                          ],
                        ),
                      ),
                      //! My Stacked Icons List View 3#
                      MyStackedIconsListView(
                          backImage: backRoundHeadIcon,
                          sizeOfBackIcon:
                              (screenWidth < 433) ? 0.09 * screenWidth : 40,
                          backColor: cGray100,
                          sizeOfFrontIcon:
                              (screenWidth < 433) ? 0.09 * screenWidth : 40,
                          frontImage: SvgPicture.asset(iconStudent),
                          frontPositionVertical: -6,
                          frontPositionHorizantal: -12,
                          sizedBoxHeight: 5)
                    ],
                  ),
                ),
                //! 4# list------------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              (screenWidth >= 550
                                  ? 'بررسی طرح و مصاحبه در جلسه کمیته استقرار با حضور داور تخصصی' //todo this part of cannot summerise to fewer lines!
                                  : 'بررسی طرح و مصاحبه در جلسه کمیته\n استقرار با حضور داور تخصصی'), //todo this part of cannot summerise to fewer lines!
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff626262),
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            ),
                            Text(
                              (screenWidth >= 550
                                  ? 'مشاوره علمی و نظارت اعضای هیأت علمی و کارشناسان با تجربه' //todo this part of cannot summerise to fewer lines!
                                  : 'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه'), //todo this part of cannot summerise to fewer lines!
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: const Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500,
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            )
                          ],
                        ),
                      ),
                      //! My Stacked Icons List View 4#
                      MyStackedIconsListView(
                          backImage: backRoundHeadIcon,
                          sizeOfBackIcon:
                              (screenWidth < 433) ? 0.09 * screenWidth : 40,
                          backColor: cGray100,
                          sizeOfFrontIcon:
                              (screenWidth < 433) ? 0.09 * screenWidth : 40,
                          frontImage: SvgPicture.asset(iconIdea),
                          frontPositionVertical: 0,
                          frontPositionHorizantal: -12,
                          sizedBoxHeight: 20)
                    ],
                  ),
                ),
                //! 5# list------------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              (screenWidth >= 543
                                  ? 'جمع بندی و اعلام نتیجه کمیته استقرار به متقاضی' //todo this part of cannot summerise to fewer lines!
                                  : 'جمع بندی و اعلام نتیجه کمیته استقرار\n به متقاضی'), //todo this part of cannot summerise to fewer lines!
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff626262),
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            ),
                            Text(
                              (screenWidth >= 543
                                  ? 'مشاوره علمی و نظارت اعضای هیأت علمی و کارشناسان با تجربه' //todo this part of cannot summerise to fewer lines!
                                  : 'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه'), //todo this part of cannot summerise to fewer lines!
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: const Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500,
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            )
                          ],
                        ),
                      ),
                      //! My Stacked Icons List View 5#
                      MyStackedIconsListView(
                          backImage: backRoundHeadIcon,
                          sizeOfBackIcon:
                              (screenWidth < 433) ? 0.09 * screenWidth : 40,
                          backColor: cGray100,
                          sizeOfFrontIcon:
                              (screenWidth < 433) ? 0.09 * screenWidth : 40,
                          frontImage: SvgPicture.asset(iconJudge),
                          frontPositionVertical: 0,
                          frontPositionHorizantal: -12,
                          sizedBoxHeight: 25),
                    ],
                  ),
                ),
                //! 6# list------------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              (screenWidth >= 543
                                  ? 'تهیه پیش نویس قرارداد و دریافت مدارک مورد نیاز جهت عقد قرارداد' //todo this part of cannot summerise to fewer lines!
                                  : 'تهیه پیش نویس قرارداد و دریافت مدارک\n مورد نیاز جهت عقد قرارداد'), //todo this part of cannot summerise to fewer lines!
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff626262),
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            ),
                            Text(
                              (screenWidth >= 543
                                  ? 'مشاوره علمی و نظارت اعضای هیأت علمی و کارشناسان با تجربه' //todo this part of cannot summerise to fewer lines!
                                  : 'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه'), //todo this part of cannot summerise to fewer lines!
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: const Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500,
                                fontSize: (() {
                                  if (screenWidth >= 344) {
                                    return 12.0;
                                  } else if (screenWidth < 344) {
                                    return screenWidth * 0.034;
                                  }
                                }()),
                              ),
                            )
                          ],
                        ),
                      ),
                      //! My Stacked Icons List View 6#
                      MyStackedIconsListView(
                          backImage: backRoundHeadIcon,
                          sizeOfBackIcon:
                              (screenWidth < 433) ? 0.09 * screenWidth : 40,
                          backColor: cGray100,
                          sizeOfFrontIcon:
                              (screenWidth < 433) ? 0.09 * screenWidth : 40,
                          frontImage: SvgPicture.asset(iconContract),
                          frontPositionVertical: 0,
                          frontPositionHorizantal: -12,
                          sizedBoxHeight: 25)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //! MY Bottom Navigation Bar Method
  BottomNavigationBar myBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xff1f0990),
      items: [
        bottomNavigationBarItembuilder(
          icon: const Icon(Icons.more_horiz_outlined),
          label: 'منو بیشتر',
          activatedIcon:
              const CustumMoreIcon(), //! custom 'more' icon when it's actived
        ),
        bottomNavigationBarItembuilder(
          icon: const Icon(Icons.person_outline_rounded),
          label: 'اطلاعات من',
          activatedIcon: const Icon(Icons.person),
        ),
        bottomNavigationBarItembuilder(
          icon: const Icon(Icons.notifications_none_outlined),
          label: 'اطلاع رسانی',
          activatedIcon: const Icon(Icons.notifications),
        ),
        bottomNavigationBarItembuilder(
          icon: const Icon(Icons.home_outlined),
          label: 'داشبورد من',
          activatedIcon: const Icon(Icons.home),
        )
      ],
      onTap: (index) {
        currentIndex = index;
        setState(() {});
      },
    );
  }

  //! Bottom Navigation Bar Item Builder Method
  BottomNavigationBarItem bottomNavigationBarItembuilder({
    required Icon icon,
    required String label,
    required Widget activatedIcon,
  }) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
      activeIcon: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 32,
              height: 4,
              decoration: BoxDecoration(
                  color: const Color(0xff02d0ff),
                  borderRadius: BorderRadius.circular(3)),
            ),
          ),
          activatedIcon,
        ],
      ),
    );
  }
}

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Text(
      (screenWidth >= 543
          ? 'ارزیابی اولبه طرح ایده محوری توسط کارشناس فنی'
          : 'ارزیابی اولبه طرح ایده محوری توسط\n کارشناس فنی'),
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: (() {
          if (screenWidth > 392) {
            12;
          } else if (screenWidth < 392) {
            screenWidth * 0.003;
          }
        }()),
      ),
    );
  }
}

//! My Stacked Icons List View
class MyStackedIconsListView extends StatelessWidget {
  final String backImage;
  final Color backColor;
  final frontImage;
  final double frontPositionVertical;
  final double frontPositionHorizantal;
  final double sizedBoxHeight;
  final double sizeOfBackIcon;
  final double sizeOfFrontIcon;

  const MyStackedIconsListView({
    super.key,
    required this.sizeOfFrontIcon,
    required this.sizeOfBackIcon,
    required this.backImage,
    required this.backColor,
    required this.frontImage,
    required this.frontPositionVertical,
    required this.frontPositionHorizantal,
    required this.sizedBoxHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: sizeOfBackIcon,
              child: Image.asset(
                backImage,
                fit: BoxFit.fill,
                color: backColor,
              ),
            ),
            Positioned(
                bottom: frontPositionVertical,
                left: frontPositionHorizantal,
                child: SizedBox(
                  width: sizeOfFrontIcon,
                  child: frontImage,
                )),
          ],
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
      ],
    );
  }
}

//! Custom 'more' Icon
class CustumMoreIcon extends StatelessWidget {
  const CustumMoreIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1f0990),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(Icons.more_horiz_outlined, color: Colors.white),
    );
  }
}

//! Header Stack Widget
class HeaderStackWidget extends StatelessWidget {
  const HeaderStackWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset(blueHeader, fit: BoxFit.fill, width: screenWidth),
        SvgPicture.asset(maskTriangle, fit: BoxFit.fill, width: screenWidth),
        Positioned(
          top: (screenWidth < 433) ? 0.046 * screenWidth : 20,
          child: Text(
            'مراحل پذیرش در دوره رشد مقدماتی',
            style: TextStyle(
                color: Colors.white,
                fontSize: (screenWidth < 433) ? 0.030 * screenWidth : 14,
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          right: 0,
          top: 10,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: (screenWidth < 313) ? -40 : -30,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                whiteCircle,
                width: 70,
              ),
              Positioned(
                top: 7,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 60,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
