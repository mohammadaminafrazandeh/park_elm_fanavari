import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:park_elm_fanavari/colors.dart';
import 'package:park_elm_fanavari/image_string.dart';
import 'package:park_elm_fanavari/screens/login_modal.dart';
import 'package:park_elm_fanavari/screens/sms_auth_code_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<bool> isSelected = [
    false,
    true,
  ];
  bool isChecked = false;

  TextEditingController textEditingController = TextEditingController();
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
                    .heightAdopter(208),
                child: Container(
                  width: 190,
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(53.23),
                  decoration: BoxDecoration(
                      color: cprimary, borderRadius: BorderRadius.circular(8)),
                  alignment: Alignment.center,
                  child: ToggleButtons(
                    borderWidth: 4,
                    selectedBorderColor: cprimary,
                    borderColor: cprimary,
                    color: cwhite,
                    fillColor: csecondary,
                    selectedColor: cprimary,
                    borderRadius: BorderRadius.circular(8),
                    isSelected: isSelected,
                    onPressed: (int index) {
                      setState(() {
                        for (int buttonIndex = 0;
                            buttonIndex < isSelected.length;
                            buttonIndex++) {
                          if (buttonIndex == index) {
                            isSelected[buttonIndex] = true;
                          } else {
                            isSelected[buttonIndex] = false;
                          }
                        }
                      });
                    },
                    children: const <Widget>[
                      Text(
                        '        شرکت        ',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        '     کاربر حقیقی     ',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(272),
                height: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(80),
                width: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(80),
                child: Image.asset(logoParkElmFanavari),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(360),
                child: SizedBox(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(32),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'کاربران ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'ورود/ ثبت نام',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(408),
                child: SizedBox(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(24),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'شماره موبایل',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(440),
                child: Container(
                  color: cGray100,
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(48),
                  child: TextFormField(
                    //todo neeed to make  a validation after making other ui,
                    keyboardType: TextInputType.phone,
                    controller: textEditingController,
                    decoration: InputDecoration(
                      hintText: '  ۰۹XX XXX XX XX',
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: cGray500,
                      ),
                      contentPadding: const EdgeInsets.all(12),
                      suffixIcon: SvgPicture.asset(mobileIcon),
                      suffixIconConstraints: BoxConstraints.tight(
                        const Size.square(24),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: cGray200),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: cGray200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: cGray200,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(496),
                child: SizedBox(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(265),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'پارک علم وفناوری می پذیرم  ',
                        style: TextStyle(
                            color: cGray800,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        //todo making a modal(another page for regulation)  after the finigishing the ui
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginModal(),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 0.5),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: cprimary,
                                width: 1,
                              ),
                            ),
                          ),
                          child: const Text(
                            'قوانین و مقررات',
                            style: TextStyle(
                                color: cprimary,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Checkbox(
                        checkColor: cwhite,
                        activeColor: cprimary,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: isChecked,
                        side: const BorderSide(width: 2, color: cGray700),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(552),
                child: SizedBox(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(48),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SMSAuthCodeScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: cPrimary50,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text(
                      'دریافت کد تایید',
                      style: TextStyle(
                        color: cPrimary300,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(612),
                child: SizedBox(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(24),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '-------------------',
                        style: TextStyle(letterSpacing: -2, color: cGray200),
                      ),
                      Text('    یا    '),
                      Text(
                        '-------------------',
                        style: TextStyle(letterSpacing: -2, color: cGray200),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(648),
                child: SizedBox(
                  width: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .widthAdopter(248),
                  height: ResponsiveDimention(
                          screenWidth: screenWidth, screenHeight: screenHeight)
                      .heightAdopter(48),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cwhite,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: const BorderSide(width: 1, color: cprimary),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, color: cprimary),
                        Text(
                          '   ورود از طریق پنجره دولت',
                          style: TextStyle(color: cprimary),
                        ),
                      ],
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
