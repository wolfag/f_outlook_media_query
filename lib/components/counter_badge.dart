// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:f_media_query/constants.dart';
import 'package:flutter/material.dart';
import '../extension.dart';

class CounterBadge extends StatelessWidget {
  const CounterBadge({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: kBadgeColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Text(
        count.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    ).addNeumorphism(
      offset: const Offset(4, 4),
      borderRadius: 9,
      blurRadius: 4,
      topShadowColor: Colors.white,
      bottomShadowColor: const Color(0xff30384D),
    );
  }
}
