import 'package:blinkx/component/body_component_1.dart';
import 'package:blinkx/component/body_component_2.dart';
import 'package:blinkx/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BlinkX extends StatelessWidget {
  const BlinkX({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 60,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: SvgPicture.asset(
            'assets/icons/back_arrow.svg',
            fit: BoxFit.scaleDown,
            // ignore: deprecated_member_use
            color: IconTheme.of(context).color,
          ),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.light_mode,
                  color: Theme.of(context).iconTheme.color,
                ),
                Switch(
                  value: Provider.of<BlinkxProvider>(context, listen: false)
                      .isDarkModeOn,
                  activeColor: const Color(0xffFA7416),
                  inactiveThumbColor: const Color(0xffFA7416),
                  onChanged: (boolValue) {
                    Provider.of<BlinkxProvider>(context, listen: false)
                        .updateTheme(boolValue);
                  },
                ),
                Icon(
                  Icons.dark_mode,
                  color: Theme.of(context).iconTheme.color,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Balloon Payment",
                  style: TextStyle(
                    fontSize: 16,
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
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.only(left: 30.0, top: 30.0, bottom: 30.0),
                child: Row(
                  children: const [
                    Expanded(
                      flex: 4,
                      child: BodyComponent1(),
                    ),
                    Expanded(
                      flex: 6,
                      child: BodyComponent2(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Ink(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFA7416),
                        Color(0xffD947EE),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        60.0,
                      ),
                    ),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 88.0,
                        minHeight: 40.0), // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      "Apply Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'BeVietnam',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
