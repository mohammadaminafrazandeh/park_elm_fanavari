import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:park_elm_fanavari/colors.dart';
import 'package:park_elm_fanavari/image_string.dart';

class SMSAuthCodeScreen extends StatefulWidget {
  const SMSAuthCodeScreen({super.key});

  @override
  State<SMSAuthCodeScreen> createState() => _SMSAuthCodeScreenState();
}

List<Color> buttonColor = [
  cprimary,
  cGray100,
];
List<bool> isSelected = [
  false,
  true,
];
bool isChecked = false;
TextEditingController textEditingController = TextEditingController();
InputDecoration? customInputDecoration;

class _SMSAuthCodeScreenState extends State<SMSAuthCodeScreen> {
  int _counter = 150; // Initial countdown time in seconds
  late Timer _timer;
  bool ispressing = true;
  @override
  void initState() {
    super.initState();

    // Start the countdown timer
    _startTimer();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_counter == 0) {
        _timer.cancel();
        // Handle timer expiration, e.g., show a "Resend OTP" button.
      } else {
        setState(() {
          _counter--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer
        .cancel(); // Cancel the timer when the widget is disposed to prevent memory leaks.
    super.dispose();
  }

  String formatCountdownTime() {
    int minutes = _counter ~/ 60;
    int seconds = _counter % 60;
    return '$minutes:${seconds < 10 ? '0' : ''}$seconds';
  }

  String replaceFarsiNumber(String input) {
    const englishnum = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsinum = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

    for (int i = 0; i < englishnum.length; i++) {
      input = input.replaceAll(englishnum[i], farsinum[i]);
    }

    return input;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: cGray100,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(280),
                height: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(720),
                decoration: BoxDecoration(
                  color: cwhite,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(136),
                right: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(246),
                child: SvgPicture.asset(dots),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(32),
                right: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(-16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(200),
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(312),
                  child: Image.asset(
                    handShakePicture,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(248),
                right: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(16),
                child: GestureDetector(
                  onTapDown: (details) {
                    setState(() {
                      ispressing = !ispressing;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      ispressing = !ispressing;
                    });
                  },
                  onTapUp: (details) {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: ResponsiveDimention(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight)
                        .heightAdopter(48),
                    width: ResponsiveDimention(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight)
                        .widthAdopter(48),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      color: buttonColor[1],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: (ispressing)
                          ? null
                          : [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 0.2,
                                blurRadius: 5,
                                offset: const Offset(0, 6),
                              ),
                            ],
                    ),
                    child: const Icon(
                      Icons.arrow_forward_outlined,
                      size: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(304),
                right: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(16),
                child: Container(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(40),
                  alignment: Alignment.center,
                  child: Text(
                    replaceFarsiNumber(formatCountdownTime()),
                    style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'EstedadFD'),
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(360),
                right: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(16),
                child: SizedBox(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(48),
                  child: const Text(
                    'کد تایید ۵ رقمی  ارسال شده به شماره زیر را وارد کنید',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(416),
                right: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(16),
                child: Container(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(48),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), color: cGray100),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(editIcon),
                      hintText: '۰۹۱۱۲۳۴۵۶۷۸',
                      hintStyle: const TextStyle(color: cGray700),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: ResponsiveDimention(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight)
                              .heightAdopter(12)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResponsiveDimention {
  const ResponsiveDimention({
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  double widthAdopter(double? width) {
    double ratioWidth = width! / 360.0;
    return screenWidth * ratioWidth;
  }

  double heightAdopter(double? height) {
    double ratioheight = height! / 800;
    return screenHeight * ratioheight;
  }
}
