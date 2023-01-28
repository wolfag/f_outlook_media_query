import 'package:f_media_query/components/side_menu.dart';
import 'package:f_media_query/constants.dart';
import 'package:f_media_query/models/email.dart';
import 'package:f_media_query/responsive.dart';
import 'package:f_media_query/screens/email/email_screen.dart';
import 'package:f_media_query/screens/main/components/email_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ListOfEmail extends StatefulWidget {
  const ListOfEmail({super.key});

  @override
  State<ListOfEmail> createState() => _ListOfEmailState();
}

class _ListOfEmailState extends State<ListOfEmail> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: SideMenu(),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        color: kBgDarkColor,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    if (!Responsive.isDesktop(context))
                      IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(Icons.menu),
                      ),
                    if (!Responsive.isDesktop(context))
                      const SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          fillColor: kBgLightColor,
                          filled: true,
                          suffixIcon: Padding(
                            padding:
                                const EdgeInsets.all(kDefaultPadding * 0.75),
                            child: WebsafeSvg.asset(
                              'assets/Icons/Search.svg',
                              width: 24,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    WebsafeSvg.asset(
                      'assets/Icons/Angle down.svg',
                      width: 16,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Sort by date",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 20,
                      child: WebsafeSvg.asset(
                        'assets/Icons/Sort.svg',
                        width: 16,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              Expanded(
                child: ListView.builder(
                  itemCount: emails.length,
                  itemBuilder: (context, index) {
                    return EmailCard(
                      email: emails[index],
                      press: () {
                        if (orientation == Orientation.portrait)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmailScreen(
                                email: emails[index],
                              ),
                            ),
                          );
                      },
                      isActive:
                          Responsive.isMobile(context) ? false : index == 0,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
