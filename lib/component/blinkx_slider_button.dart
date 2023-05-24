import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlinkxIconButton extends StatelessWidget {
  const BlinkxIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Column(
      children: [
        SvgPicture.asset(
          'assets/icons/arrow_up.svg',
          fit: BoxFit.scaleDown,
        ),
        const SizedBox(
          height: 4,
        ),
        CircleAvatar(
          maxRadius: 20,
          backgroundColor: isDarkMode ? Colors.white : const Color(0xffD1D1D1),
          child: SvgPicture.asset(
            'assets/icons/just_blinkx_icon.svg',
            fit: BoxFit.scaleDown,
            // ignore: deprecated_member_use
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        SvgPicture.asset(
          'assets/icons/arrow_down.svg',
          fit: BoxFit.scaleDown,
        ),
      ],
    );
  }
}
