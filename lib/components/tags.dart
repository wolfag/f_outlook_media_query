import 'package:f_media_query/constants.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Tags extends StatelessWidget {
  const Tags({super.key});

  InkWell buildTag(
    BuildContext context, {
    required Color color,
    required String title,
  }) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            WebsafeSvg.asset(
              'assets/Icons/Markup filled.svg',
              height: 18,
              color: color,
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
              title,
              style: TextStyle(color: kGrayColor),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            WebsafeSvg.asset("assets/Icons/Angle down.svg", width: 20),
            const SizedBox(width: kDefaultPadding / 4),
            WebsafeSvg.asset("assets/Icons/Markup.svg", width: 20),
            const SizedBox(width: kDefaultPadding / 2),
            const Text(
              'Tags',
              style: TextStyle(color: kGrayColor),
            ),
            const Spacer(),
            MaterialButton(
              padding: const EdgeInsets.all(10),
              minWidth: 40,
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: kGrayColor,
                size: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: kDefaultPadding / 2),
        buildTag(context, color: Color(0xff23cf91), title: "Design"),
        buildTag(context, color: Color(0xFF3A6FF7), title: "Work"),
        buildTag(context, color: Color(0xFFF3CF50), title: "Friends"),
        buildTag(context, color: Color(0xFF8338E1), title: "Family"),
      ],
    );
  }
}
