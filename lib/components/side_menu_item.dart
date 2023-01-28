// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:f_media_query/components/counter_badge.dart';
import 'package:f_media_query/constants.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    Key? key,
    this.isActive = false,
    this.isHover = false,
    this.showBorder = true,
    this.itemCount,
    required this.iconSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final bool isHover;
  final bool showBorder;
  final int? itemCount;
  final String iconSrc;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            isActive || isHover
                ? WebsafeSvg.asset('assets/Icons/Angle right.svg', width: 15)
                : SizedBox(width: 15),
            const SizedBox(width: kDefaultPadding / 4),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 15, right: 5),
                decoration: showBorder
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xffdfe2ef),
                          ),
                        ),
                      )
                    : null,
                child: Row(
                  children: [
                    WebsafeSvg.asset(
                      iconSrc,
                      height: 20,
                      color: (isActive || isHover) ? kPrimaryColor : kGrayColor,
                    ),
                    const SizedBox(width: kDefaultPadding * 0.75),
                    Text(
                      title,
                      style: TextStyle(
                        color: isActive || isHover ? kTextColor : kGrayColor,
                      ),
                    ),
                    const Spacer(),
                    if (itemCount != null) CounterBadge(count: itemCount!)
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
