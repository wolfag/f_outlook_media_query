import 'package:f_media_query/constants.dart';
import 'package:f_media_query/responsive.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = Responsive.isMobile(context) ? 0 : kDefaultPadding / 3;
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          if (Responsive.isMobile(context)) BackButton(),
          IconButton(
            onPressed: (() {}),
            icon: WebsafeSvg.asset(
              "assets/Icons/Trash.svg",
              width: 24,
            ),
          ),
          SizedBox(width: padding),
          IconButton(
            onPressed: (() {}),
            icon: WebsafeSvg.asset(
              "assets/Icons/Reply.svg",
              width: 24,
            ),
          ),
          SizedBox(width: padding),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Reply all.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          SizedBox(width: padding),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Transfer.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const Spacer(),
          if (!Responsive.isMobile(context))
            IconButton(
              icon: WebsafeSvg.asset(
                "assets/Icons/Printer.svg",
                width: 24,
              ),
              onPressed: () {},
            ),
          SizedBox(width: padding),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Markup.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          SizedBox(width: padding),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/More vertical.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          SizedBox(width: padding),
        ],
      ),
    );
  }
}
