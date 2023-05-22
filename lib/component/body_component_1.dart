import 'package:blinkx/component/blinkx_slider_button.dart';
import 'package:blinkx/component/slider_component.dart';
import 'package:blinkx/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BodyComponent1 extends StatelessWidget {
  const BodyComponent1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            TextWidget(text: "6 Mo"),
            TextWidget(text: "5 Mo"),
            TextWidget(text: "4 Mo"),
            TextWidget(text: "3 Mo"),
            TextWidget(text: "2 Mo"),
            TextWidget(text: "1 Mo"),
          ],
        ),
        Expanded(
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  const SliderComponent(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50.0, top: 10),
                        child: const BlinkxIconButton(),
                      ),
                    ],
                  ),
                  //lines for ruler start here
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.009,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.020,
                        left: 37,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.032,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.044,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.057,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.069,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.082,
                        left: 37,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.096,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.109,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.124,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.137,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.150,
                        left: 37,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.162,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.175,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.188,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.201,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.215,
                        left: 37,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.227,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.241,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.255,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.269,
                    left: 42,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.283,
                        left: 30,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.297,
                    left: 33,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.312,
                    left: 25,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.325,
                    left: 16,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.339,
                    left: 11,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.353,
                        left: 3,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.366,
                    left: 11,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.379,
                    left: 16,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.392,
                    left: 25,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.404,
                    left: 33,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.416,
                        left: 30,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.430,
                    left: 42,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.443,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.456,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.469,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.482,
                        left: 37,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.495,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.506,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.518,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.530,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.545,
                        left: 37,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.558,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.570,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.582,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.594,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.608,
                        left: 37,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.621,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.635,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.649,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.663,
                    left: 45,
                    child: const RulerSmallWidget(),
                  ),
                  Consumer<BlinkxProvider>(
                    builder: (context, value, child) {
                      return Positioned(
                        top: MediaQuery.of(context).size.height * 0.677,
                        left: 37,
                        child: SvgPicture.asset(
                          'assets/icons/ruler_big.svg',
                          fit: BoxFit.scaleDown,
                          // ignore: deprecated_member_use
                          color: value.isDarkModeOn
                              ? const Color(0xffffffff)
                              : const Color(0xff191919),
                        ),
                      );
                    },
                  ),
                  //lines end here
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RulerSmallWidget extends StatelessWidget {
  const RulerSmallWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/ruler_small.svg',
      // fit: BoxFit.scaleDown,
      // ignore: deprecated_member_use
      color: const Color(0xff909090),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String? text;
  const TextWidget({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'BeVietnam',
        fontWeight: FontWeight.w500,
        color: Theme.of(context).textTheme.titleMedium!.color,
      ),
    );
  }
}
