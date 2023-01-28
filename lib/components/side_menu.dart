import 'package:f_media_query/components/side_menu_item.dart';
import 'package:f_media_query/components/tags.dart';
import 'package:f_media_query/constants.dart';
import 'package:f_media_query/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../extension.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Logo Outlook.png",
                    width: 46,
                  ),
                  const Spacer(),
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              const SizedBox(height: kDefaultPadding),
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                    horizontal: kDefaultPadding * 1.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {},
                icon: WebsafeSvg.asset("assets/Icons/Edit.svg"),
                label: Text(
                  "New message",
                  style: TextStyle(color: Colors.white),
                ),
              ).addNeumorphism(
                topShadowColor: Colors.white,
                bottomShadowColor: Color(0xFF234395).withOpacity(0.2),
              ),
              const SizedBox(height: kDefaultPadding),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                    horizontal: kDefaultPadding * 1.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: kBgDarkColor,
                ),
                icon: WebsafeSvg.asset("assets/Icons/Download.svg"),
                label: Text(
                  "Get messages",
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
              ).addNeumorphism(),
              const SizedBox(height: kDefaultPadding * 2),
              SideMenuItem(
                press: () {},
                title: "Inbox",
                iconSrc: "assets/Icons/Inbox.svg",
                isActive: true,
                itemCount: 3,
              ),
              SideMenuItem(
                press: () {},
                title: "Sent",
                iconSrc: "assets/Icons/Send.svg",
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Drafts",
                iconSrc: "assets/Icons/File.svg",
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Deleted",
                iconSrc: "assets/Icons/Trash.svg",
                isActive: false,
                showBorder: false,
              ),
              const SizedBox(height: kDefaultPadding * 2),
              Tags(),
            ],
          ),
        ),
      ),
    );
  }
}
