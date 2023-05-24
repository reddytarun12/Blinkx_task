import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderComponent extends StatelessWidget {
  const SliderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 35,
          ),
          child: SizedBox(
            height: double.infinity,
            child: SvgPicture.asset(
              isDarkMode
                  ? 'assets/icons/bar_icon.svg'
                  : 'assets/icons/bar_icon_light.svg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
