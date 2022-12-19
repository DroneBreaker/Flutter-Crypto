import 'package:crypto_me/widgets/app_text.dart';
import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  final String portfolioTitle;
  final String category;
  final int price;

  const PortfolioCard(
      {super.key,
      required this.portfolioTitle,
      required this.category,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 185.0),
      child: Container(
        height: 160,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 5),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Image(image: AssetImage('#')),
                  ),
                ),
                AppText(text: portfolioTitle, color: Colors.white, size: 16)
              ],
            ),
            AppText(
                text: category, color: Colors.grey.withOpacity(0.5), size: 18),
            Row(
              children: [
                AppText(text: '\$ $price', color: Colors.white, size: 18)
              ],
            )
          ],
        ),
      ),
    );
  }
}
