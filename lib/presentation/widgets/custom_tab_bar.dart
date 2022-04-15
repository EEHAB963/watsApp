import 'package:flutter/material.dart';
import 'package:wats_app/presentation/widgets/theme/style.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key, this.index}) : super(key: key);
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(color: primaryColor),
      child: Row(
        children: [
          Container(
            width: 40,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: CustomTabBarButton(
              text: "CHATS",
              textColor: index == 1 ? textIconColor : textIconColorGray,
              borderColor: index == 1 ? textIconColor : Colors.transparent,
            ),
          ),
          Expanded(
            child: CustomTabBarButton(
              text: "STATUS",
              textColor: index == 2 ? textIconColor : textIconColorGray,
              borderColor: index == 2 ? textIconColor : Colors.transparent,
            ),
          ),
          Expanded(
            child: CustomTabBarButton(
              text: "Calls",
              textColor: index == 3 ? textIconColor : textIconColorGray,
              borderColor: index == 3 ? textIconColor : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}

//......................................

class CustomTabBarButton extends StatelessWidget {
  final String? text;
  final Color? borderColor;
  final Color? textColor;
  final double? borderWidth;

  const CustomTabBarButton({
    this.text,
    this.borderColor,
    this.textColor,
    this.borderWidth = 3.0,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: borderColor!, width: borderWidth!),
        ),
      ),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
