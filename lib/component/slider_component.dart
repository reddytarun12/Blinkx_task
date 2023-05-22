import 'package:blinkx/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SliderComponent extends StatelessWidget {
  const SliderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 35,
          ),
          child: SizedBox(
            height: double.infinity,
            child: Consumer<BlinkxProvider>(
              builder: (BuildContext context, value, Widget? child) {
                return SvgPicture.asset(
                  value.isDarkModeOn
                      ? 'assets/icons/bar_icon.svg'
                      : 'assets/icons/bar_icon_light.svg',
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
