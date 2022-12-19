import 'package:crypto_me/widgets/app_text.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String firstText;
  final int balance;
  final String secondText;
  final int monthlyProfit;

  const BalanceCard(
      {super.key,
      required this.firstText,
      required this.balance,
      required this.secondText,
      required this.monthlyProfit});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 370,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(30)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 20),
          child: AppText(
              text: firstText, color: Colors.grey.withOpacity(0.8), size: 16),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: AppText(
              text: '\$ $balance',
              color: Colors.white,
              size: 30,
              bold: FontWeight.w500),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: AppText(
              text: secondText, color: Colors.grey.withOpacity(0.8), size: 14),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child:
              AppText(text: '\$ $monthlyProfit', color: Colors.white, size: 16),
        )
      ]),
    );
  }
}
