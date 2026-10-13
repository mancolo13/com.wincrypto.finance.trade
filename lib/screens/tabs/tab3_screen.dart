import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Swap'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
              ),
              child: Column(
                children: [
                  const Text('Быстрый своп без комиссий', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Вы отдаете: 2.50 ETH', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        Text('\$8,775', style: TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Icon(Icons.arrow_downward, color: AppTheme.primaryColor),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Вы получаете: 8,760 USDT', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        Text('Курс: 1 ETH = 3,504 USDT', style: TextStyle(color: AppTheme.secondaryColor, fontSize: 11)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor, foregroundColor: Colors.black, minimumSize: const Size.fromHeight(48)),
                    child: const Text('Обменять токен'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
