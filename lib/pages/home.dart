import 'package:crypto_me/widgets/app_text.dart';
import 'package:crypto_me/widgets/credit_card.dart';
import 'package:crypto_me/widgets/portfolio_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.abc_sharp))),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 82.0),
                      child: AppText(
                        text: 'Welcome',
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                    AppText(
                      text: 'Richard Browne',
                      size: 20,
                      bold: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                )
              ],
            ),

            //card section
            const SizedBox(height: 30),
            const BalanceCard(
              firstText: 'Balance',
              balance: 550981,
              secondText: 'Monthly Profit',
              monthlyProfit: 10452,
            ),

            //portfolio section
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 240.0),
              child: AppText(
                text: 'My Portfolio',
                color: Colors.grey.withOpacity(0.8),
                size: 24,
                bold: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            const PortfolioCard(
              portfolioTitle: 'BTC/BIDR',
              category: 'Portfolio',
              price: 235897,
            )
          ],
        ),
      )),
    );
  }
}
