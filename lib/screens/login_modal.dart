// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:park_elm_fanavari/colors.dart';

class LoginModal extends StatefulWidget {
  const LoginModal({super.key});

  @override
  State<LoginModal> createState() => _LoginModalState();
}

class _LoginModalState extends State<LoginModal> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenWidth, 72),
          child: Column(
            children: [
              const SizedBox(height: 22),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: cGray200,
                      width: 1,
                    ),
                  ),
                ),
                child: const Text(
                  'قوانین و مقررات پارک علم و فناوری خوزستان',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 16)
            ],
          ),
        ),
        extendBody: true,
        body: Stack(
          children: [
            Positioned(
              right: ResponsiveDimention(
                      screenWidth: screenWidth, screenHeight: screenHeight)
                  .widthAdopter(8),
              bottom: ResponsiveDimention(
                      screenWidth: screenWidth, screenHeight: screenHeight)
                  .heightAdopter(8),
              child: SizedBox(
                width: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(344),
                height: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 192,
                      height: 48,
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(backgroundColor: cprimary),
                        onPressed: () {},
                        child: const Text(
                          'قوانین را می پذیرم',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: cwhite),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      height: 48,
                      width: 104,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: cwhite,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: const BorderSide(width: 1, color: cGray800),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'برگشت',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: cGray800),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: cGray800,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .heightAdopter(98),
                right: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(24),
                left: ResponsiveDimention(
                        screenWidth: screenWidth, screenHeight: screenHeight)
                    .widthAdopter(24),
              ),
              child: ShaderMask(
                shaderCallback: (Rect rect) {
                  return const LinearGradient(
                          stops: [0.95, 0.99],
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter,
                          colors: [Colors.white, Colors.transparent])
                      .createShader(rect);
                },
                child: ListView(
                  children: const [
                    ModalLoginTextWidget(
                        data:
                            'سیاست پذیرش واحدهای فناورپذیرش واحد های فناور در مركز رشد سازمان مبتنی بر اساسنامه ، آیین نامه ها ، دستور العمل های اجرائی ومصوبات هیئت امنا وشورای مركز رشد این سازمان است. گروه هایی كه پذیرش می شوند عبارت خواهند بود از :'),
                    ModalLoginTextWidget(
                        data: '   \u2022   '
                            'شركت ها وهسته های فناور خصوصی مستقل نوپا '),
                    ModalLoginTextWidget(
                        data: '   \u2022   '
                            'واحدهای تحقیق و توسعه نوپا (R&D) وابسته به صنایع ویا دستگاه های اجرایی '),
                    ModalLoginTextWidget(
                        data:
                            'پذیرش تمامی واحد ها ممكن است برای رشد مقدماتی باشد ولی داشتن شخصیت حقوقی از الزامات استقرار واحد فناور در دوره رشد است. واحد هایی پذیرش می شوند كه حاصل فعالیت آنها در خدمت توسعه فناوری قرار گیرد. پذیرش واحد های مجری تحقیقات كاربردی یا توسعه ای كه از پشتیبانی های مالی وخدماتی مراكز تحقیقاتی واجرایی بهره مند هستند ، از اولویت برخوردار خواهد یود.سایر الزامات كه در پذیرش واحد فناور مد نظر قرار می گیرند عبارتند از:'),
                    ModalLoginTextWidget(
                        data: '   \u2022   '
                            'داشتن ایده های كاری دانش محور با جنبه های اقتصادی واشتغال زایی.'),
                    ModalLoginTextWidget(
                        data: '   \u2022   '
                            'داشتن نیروی انسانی توانا ومجرب در تركیب اعضای اصلی ومشاورین واحد.'),
                    ModalLoginTextWidget(
                        data: '   \u2022   '
                            'داشتن بازار مناسب برای محصول وامكان توسعه آن.'),
                    ModalLoginTextWidget(
                        data: '   \u2022   '
                            'امكان ایجاد زمینه های بعدی كارآفرینی به وسیله زایش ایده های تحقیقاتی برخاسته از ایده محوری اولیه.'),
                    ModalLoginTextWidget(
                        data: '   \u2022   '
                            'امكان رفع نیاز فنی ، مهندسی ، خدماتی و مشاوره ای عرصه های نحتلف صنعتی و خدماتی مرتبط با موضوع فعالیت واحد'),
                    ModalLoginTextWidget(
                        data:
                            'آیین نامه پذیرش واحد های فناور خصوصیفعالیت واحدهای فناور خصوصی زمینه ساز ارتباط با مراكز آموزش عالی و پژوهشی است و این واحدها چنانچه از پشتیبانی های مناسب برخوردار گردند وزمینه مناسب فعالیت برای آنان فراهم گردد، نقش موثری در گسترش پژوهش های كاربردی وتوسعه‌ای خواهند داشت و موجب ارتقای فناوری وپیشرفت اقتصاد ملی می‌شوند.این موسسه ها با هدف دست یابی به فناوری مورد نیاز صنعت و خدمات در محدوده مهندسی معكوس ، بهینه سازی روش های تولید رشد كمی وكیفی محصول ، انتقال فناوری و هم چنین تجاری سازی فعالیت می كنند.انگیزه این موسسه ها برخورداری از جایگاهی در خور توجه در صنعت و یا خدمات و نیز تقویت قدرت مالی و رشد اقتصادی از راه مزیت های رقابتی است .'),
                    ModalLoginTextWidget(
                        data:
                            ' بنا بر این مناسب بودن ایده ، برنامه و تركیب نیروی انسانی از دلایل موثر در موفقیت این موسسه ها است . علاوه بر آن بهره مندی از پشتیبانی و خدمات عمومی كمك موثر در نتیجه بخشی فعالیت این واحدها است .دانش آموختگان مراكز آموزش عالی به خصوص مقاطع تحصیلی بالاتر در شكل گیری استمرار فعالیت این موسسه ها كه بیشتر نوآور و در عین حال نو پا هستند ، نقش موثر دارند. بستر سازی برای تشكیل این واحدها از اهمیت خاصی برخوردار است . در این راستا مركز رشد سازمان پژوهش های علمی وصنعتی ایران از ایجاد ، تقویت ورشد این گونه واحدهای فناور بر اساس شرایط زیر پشتیبانی می كند.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 1- محدوده كاری واحد: شامل تحقیقات كاربردی وتوسعه ای ، طراحی صنعتی ، مهندسی معكوس بهینه سازی وارتقای فناوری موجود ، انتقال فناوری وتجاری سازی نتایج تحقیقات مورد نیاز بخش های اقتصادی در عرصه های صنعت كشاورزی وخدمات است.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 2- پذیرش واحد: پذیرش واحد در مركز رشد مستلزم تصویب شورای مركز رشد بر اساس نتایج ارزیابی از تركیب نیروی انسانی ، ایده كاری وبرنامه كاری واحد به شرح زیر خواهد بود.'),
                    ModalLoginTextWidget(
                        data:
                            '2-1 تركیب مناسب نیروهای همكار وسهامداران واحد:حداقل دو نفر تمام وقت با مدرك كارشناسی و یا بالاتر . یك نفر آنها عضو موسس ودارای حد اقل 20%سهام واحد باشد.حداقل یك نفر كارشناس خبره به عنوان مشاوره ویا همكار ، با سابقه فغالیت های مرتبط با فناوری در زمینه تخصصی واحد.'),
                    ModalLoginTextWidget(
                        data:
                            'تبصره 1: شرایط مدرك تحصیلی در مورد افراد خلاق ، نوآور و برخوردار از توانایی های لازم با تشخیص شورای مركز رشد قابل تغییر است.'),
                    ModalLoginTextWidget(
                        data:
                            '2-2 وجود ایده كاری دانش محور با جنبه های فناوری و زمینه مساعد اقتصادی2-3 داشتن برنامه كاری مناسب و متناسب با موضوع فعالیتماده'),
                    ModalLoginTextWidget(data: ' 3- وضعیت حقوقی:'),
                    ModalLoginTextWidget(
                        data:
                            '3-1 واحد باید شخصیت حقوقی داشته و به ثبت رسیده باشد.'),
                    ModalLoginTextWidget(
                        data:
                            '3-2 اساسنامه واحد باید مبین انجام فعالیت در راستای یكی از موارد ماده 1 این آیین نامه باشد.'),
                    ModalLoginTextWidget(
                        data:
                            '3-3 هرگونه تغییر در اساسنامه واحد باید به اطلاع مركز رشد سازمان برسد.'),
                    ModalLoginTextWidget(
                        data:
                            '3-4 واحد از نظر حقوقی مستقل ولی ملزم به رعایت مقررات وضوابط مركز رشد است.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 4- حمایتهای مركز رشد: حمایتهای مركز رشد شامل ارائه خدمات و حمایتهای مالی و اعتباری به شرح زیر است:'),
                    ModalLoginTextWidget(data: '4-1 ارائه خدمات'),
                    ModalLoginTextWidget(
                        data:
                            '4-1-1 پشتیبانی عمومی شامل در اختیار قراردادن دفتر و یا فضای كارگاهی'),
                    ModalLoginTextWidget(
                        data:
                            '4-1-2 خدمات اداری وارتباطی شامل بهره مندی از منشی ، تایپ ، تكثیر ، تلفن و فاكس'),
                    ModalLoginTextWidget(
                        data:
                            '4-1-3 اطلاع رسانی و ارتقای كیفی واحد شامل خدمات شبكه وكتابخانه و برگزاری دوره های آموزشی'),
                    ModalLoginTextWidget(
                        data:
                            '4-1-4 معرفی جهت دریافت خدمات فنی وتخصصی شامل خدمات آزمایشگاهی وكارگاهی'),
                    ModalLoginTextWidget(
                        data:
                            '4-1-5 معرفی جهت دریافت خدمات مشاوره ای در زمینه های علمی ، فنی ، حقوقی ، مالی ، بازاریابی وتجاری سازی'),
                    ModalLoginTextWidget(data: '4-2 حمایتهای مالی و اعتباری'),
                    ModalLoginTextWidget(
                        data:
                            '4-2-1 اعتبارات مربوط به خدمات به منظور كاهش هزینه های واحد در دوران راه اندازی'),
                    ModalLoginTextWidget(
                        data:
                            '4-2-2 حمایت مالی در جهت تبدل ایده كاری واحد به محصول / خدمات.'),
                    ModalLoginTextWidget(
                        data:
                            'تبصره 2: میزان حمایت های مالی ، نحوه و موارد تخصیص آن مطابق با ضوابط و آیین نامه های مربوط است.'),
                    ModalLoginTextWidget(
                        data:
                            'تبصره 3: خدمات یادشده در حد مقدورات مركز رشد سازمان وبر اساس تعرفه های تعیین شده خواهد بود.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 5- تعهدات واحد فناور در قبال مركز رشد سازمان:'),
                    ModalLoginTextWidget(
                        data:
                            '5-1 پیشرفت فعالیت واحد و میزان رشد كمی یا كیفی آن باید مطابق با برنامه ارائه شده توسط واحد طی دوران استقرار در مركز رشد باشد.'),
                    ModalLoginTextWidget(
                        data:
                            '5-2 واحد فناور باید پس از طی دوره رشد (3 و یا 5 سال ) از مركز رشد خارج شود.'),
                    ModalLoginTextWidget(
                        data:
                            '5-3 انعكاس ارتباط واحد فناور با مركز رشد ، به نحو مناسب در تمامی مكاتبه ها و مدارك با استفاده از سربرگ و كارت ویزیت مطابق با الگوی استاندارد مركز رشد.'),
                    ModalLoginTextWidget(
                        data:
                            '5-4 باز پرداخت حمایت های مالی دریافتی از مركز رشد سازمان در دوره حضور در این مركز ، مطابق با آیین نامه های مربوط.'),
                    ModalLoginTextWidget(
                        data:
                            '5-5 ارائه مستندات تسویه حساب مالی با طرف های قرارداد خدماتی و یا مشاوره ای قبل از ترك مركز رشد.'),
                    ModalLoginTextWidget(
                        data:
                            '5-6 همكاری پیوسته با مركز رشد ونیز ارائه گزارش های مقطعی پیشرفت كار به منظور بررسی و ارزیابی بررسی روند رشد واحد های فناور در دوران فعالیت در مركز.'),
                    ModalLoginTextWidget(
                        data:
                            'آیین نامه اجرائی پرداخت اعتباراتدر راستای انجام حمایت های مالی واعتباری مركز رشد از واحد های فناور برای كاهش هزینه های آنان در دوران راه اندازی و تبدیل ایده كاری به محصول یا خدمات ورشد و آماده سازی آنها برای حضور در عرصه صنعت و خدمات ، اعتباراتی در اختیار آنها قرار می گیرد.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 1: اعتبار تخصیص یافته در دوره رشد مقدماتی برای واحد های فناور با توجه به ایده كاری پیشنهادی (Business Plan) كه در قالب كاربرگ پذیرش به تصویب شورای مركز رشد رسیده است؛ برای پرداخت هزینه های تدوین برنامه كاری، تثبیت ایده محوری، خرید مواد وتجهیزات ضروری، هزینه های پشتیبانی عمومی ومحل استقرار، استفاده از خدمات مشاوره علمی ، اطلاع رسانی ، آزمایشگاهی ، فنی وتخصصی خواهد بود.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 2: اعتبار مصوب بر اساس قرارداد با واحد فناور و با رعایت ضوابط مربوط پرداخت خواهد شد.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 3: پرداخت مبلغ قرارداد به مفاد قراداد و با عنایت به پیشرفت كار واحد پس از تایید مدیر مركز رشد بر اساس مراحل مشخص شده در قرارداد امكان پذیر است.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 4: میزان و نحوه باز پرداخت مبلغ دریافتی توسط واحد فناور طبق مصوبه شورای مركز رشد خواهد بود.'),
                    ModalLoginTextWidget(
                        data:
                            'ماده 5: این آیین نامه در یك مقدمه و 5 ماده در تاریخ 5/2/84 به تصویب شورای مركز رشد رسید.'),
                    ModalLoginTextWidget(data: '\n')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ModalLoginTextWidget extends StatelessWidget {
  const ModalLoginTextWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
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
