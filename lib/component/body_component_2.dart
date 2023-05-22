import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class BodyComponent2 extends StatelessWidget {
  const BodyComponent2({super.key});

  @override
  Widget build(BuildContext context) {
    var amountController = TextEditingController();

    if (amountController.text.isEmpty) {
      amountController.text = "60,000";
    }

    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "  Loan Tenure",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'BeVietnam',
                      fontWeight: FontWeight.w400,
                      color: Color(
                        0xff909090,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  SvgPicture.asset(
                    'assets/icons/info_icon.svg',
                    fit: BoxFit.scaleDown,

                    // ignore: deprecated_member_use
                    color: Theme.of(context).iconTheme.color,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 38,
                    width: double.infinity,
                    child: GradientText(
                      ' 6 Months',
                      style: const TextStyle(
                        fontSize: 32,
                        fontFamily: 'BeVietnam',
                        fontWeight: FontWeight.w700,
                      ),
                      colors: const [
                        Color(0xffFA7416),
                        Color(0xffD947EE),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 13,
                      child: SvgPicture.asset(
                        'assets/icons/text_underline.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Loan Amount",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'BeVietnam',
                  fontWeight: FontWeight.w400,
                  color: Color(
                    0xff909090,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 38,
                    width: 130,
                    child: TextField(
                      controller: amountController,
                      style: const TextStyle(
                        fontSize: 28,
                        fontFamily: 'BeVietnam',
                        fontWeight: FontWeight.w700,
                      ),
                      cursorColor:
                          Theme.of(context).textTheme.titleMedium!.color,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefix: Text(
                          '\u{20B9} ',
                          style: TextStyle(
                              fontSize: 28,
                              color: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .color),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/edit_icon.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Interest",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'BeVietnam',
                  fontWeight: FontWeight.w400,
                  color: Color(
                    0xff909090,
                  ),
                ),
              ),
              Text(
                "@18% p.a",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'BeVietnam',
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).textTheme.titleMedium!.color),
              )
            ],
          ),
        ],
      ),
    );
  }
}
