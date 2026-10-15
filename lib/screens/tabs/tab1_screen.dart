import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  int _leverage = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Markets'),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('BTC / USDT Perpetual', style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.bold)),
                      Text('+4.18% 24h', style: TextStyle(color: Colors.greenAccent, fontSize: 13, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text('\$67,820.50', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Text('Leverage: ${_leverage}x', style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
                      Expanded(
                        child: Slider(
                          value: _leverage.toDouble(),
                          min: 1,
                          max: 100,
                          divisions: 99,
                          activeColor: AppTheme.primaryColor,
                          onChanged: (v) => setState(() => _leverage = v.toInt()),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent, foregroundColor: Colors.black),
                          child: const Text('BUY / LONG'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, foregroundColor: Colors.white),
                          child: const Text('SELL / SHORT'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Order Book (Spread: \$0.50)', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(16)),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price (USDT)', style: TextStyle(color: Colors.white54, fontSize: 12)),
                      Text('Amount (BTC)', style: TextStyle(color: Colors.white54, fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('67,825.00', style: TextStyle(color: Colors.redAccent, fontSize: 13)), Text('2.418 BTC', style: TextStyle(color: Colors.white70, fontSize: 13))]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('67,823.50', style: TextStyle(color: Colors.redAccent, fontSize: 13)), Text('1.890 BTC', style: TextStyle(color: Colors.white70, fontSize: 13))]),
                  Divider(color: Colors.white12, height: 16),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('67,819.00', style: TextStyle(color: Colors.greenAccent, fontSize: 13)), Text('3.120 BTC', style: TextStyle(color: Colors.white70, fontSize: 13))]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('67,816.50', style: TextStyle(color: Colors.greenAccent, fontSize: 13)), Text('4.550 BTC', style: TextStyle(color: Colors.white70, fontSize: 13))]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
