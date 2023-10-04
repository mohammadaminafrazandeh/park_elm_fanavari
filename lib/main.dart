import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff1f0990),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.more_horiz_outlined),
              label: 'منو بیشتر',
              activeIcon: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 32,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Color(0xff02d0ff),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff1f0990),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.more_horiz_outlined,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'اطلاعات من',
              activeIcon: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 32,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Color(0xff02d0ff),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                  ),
                  const Icon(Icons.person),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'اطلاع رسانی',
              activeIcon: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 32,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Color(0xff02d0ff),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                  ),
                  const Icon(Icons.notifications),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'داشبورد من',
              activeIcon: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 32,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Color(0xff02d0ff),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                  ),
                  const Icon(Icons.home),
                ],
              ),
            ),
          ],
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  SvgPicture.asset('assets/images/Rectangle 1070.svg',
                      fit: BoxFit.fill, width: screenWidth),
                  SvgPicture.asset('assets/images/Group 851.svg',
                      fit: BoxFit.fill, width: screenWidth),
                  const Positioned(
                    top: 20,
                    child: Text(
                      'مراحل پذیرش در دوره رشد مقدماتی',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
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
                    bottom: -30,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Ellipse 22.svg',
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
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('تکمیل فرم پذیرش مرکز رشد',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          InkWell(
                            onTap: () =>
                                launchUrl(Uri.parse('https://www.google.com')),
                            child: const Text(
                              'دریافت فرم پذیرش ایده محوری',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff1f0990)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          width: 40,
                          child: Image.asset(
                            'assets/images/Rectangle 211.png',
                            fit: BoxFit.fill,
                            color: const Color(0xffd9f1e1),
                          ),
                        ),
                        const Positioned(
                          bottom: -12,
                          left: -12,
                          child: Icon(
                            Icons.check_circle_outline_rounded,
                            color: Color(0xff40bf6a),
                            size: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset('assets/images/Frame 1827.svg'),
                            const SizedBox(height: 40)
                          ],
                        ),
                        const SizedBox(width: 40)
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'ارزیابی اولبه طرح ایده محوری توسط\n کارشناس فنی',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: Color(0xff3b3b3b)),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(
                              width: 40,
                              child: Image.asset(
                                'assets/images/Rectangle 211.png',
                                fit: BoxFit.fill,
                                color: const Color(0xff02d0ff),
                              ),
                            ),
                            Positioned(
                                bottom: -6,
                                left: -12,
                                child: SvgPicture.asset(
                                    'assets/images/reshot-icon-search-thinking-74TMXANEZC 1.svg')),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('ارسال طرح به داور فنی واقتصادی',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff626262))),
                          Text(
                            'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: Color(0xff9e9e9e)),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(
                              width: 40,
                              child: Image.asset(
                                'assets/images/Rectangle 211.png',
                                fit: BoxFit.fill,
                                color: const Color(0xfff7f7f7),
                              ),
                            ),
                            Positioned(
                              bottom: -0,
                              left: -12,
                              child: SvgPicture.asset(
                                  'assets/images/reshot-icon-student-3QUJDPNLXF 1.svg'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'بررسی طرح و مصاحبه در جلسه کمیته\n استقرار با حضور داور تخصصی',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff626262),
                            ),
                          ),
                          Text(
                            'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Color(0xff9e9e9e),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(
                              width: 40,
                              child: Image.asset(
                                'assets/images/Rectangle 211.png',
                                fit: BoxFit.fill,
                                color: const Color(0xfff7f7f7),
                              ),
                            ),
                            Positioned(
                              bottom: -0,
                              left: -12,
                              child: SvgPicture.asset(
                                  'assets/images/reshot-icon-idea-PFZLVDHGR8 1.svg'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'جمع بندی و اعلام نتیجه کمیته استقرار\n به متقاضی',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff626262),
                            ),
                          ),
                          Text(
                            'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Color(0xff9e9e9e),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(
                              width: 40,
                              child: Image.asset(
                                'assets/images/Rectangle 211.png',
                                fit: BoxFit.fill,
                                color: const Color(0xfff7f7f7),
                              ),
                            ),
                            Positioned(
                              bottom: -0,
                              left: -12,
                              child: SvgPicture.asset(
                                  'assets/images/reshot-icon-judge-CTHFSZP2YL 1.svg'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 35)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'تهیه پیش نویس قرارداد و دریافت مدارک\n مورد نیاز جهت عقد قرارداد',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff626262),
                            ),
                          ),
                          Text(
                            'مشاوره علمی و نظارت اعضای هیأت\n علمی و کارشناسان با تجربه',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Color(0xff9e9e9e),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(
                              width: 40,
                              child: Image.asset(
                                'assets/images/Rectangle 211.png',
                                fit: BoxFit.fill,
                                color: const Color(0xfff7f7f7),
                              ),
                            ),
                            Positioned(
                              bottom: -0,
                              left: -12,
                              child: SvgPicture.asset(
                                  'assets/images/reshot-icon-contract-UK36F4RCD8 1.svg'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32)
                      ],
                    ),
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
