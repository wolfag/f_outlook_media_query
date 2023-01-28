import 'package:f_media_query/components/counter_badge.dart';
import 'package:f_media_query/components/side_menu.dart';
import 'package:f_media_query/components/tags.dart';
import 'package:f_media_query/responsive.dart';
import 'package:f_media_query/screens/email/email_screen.dart';
import 'package:f_media_query/screens/main/components/list_of_emails.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        mobile: ListOfEmail(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmail(),
            ),
            Expanded(
              flex: 9,
              child: EmailScreen(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: SideMenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ListOfEmail(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: EmailScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
