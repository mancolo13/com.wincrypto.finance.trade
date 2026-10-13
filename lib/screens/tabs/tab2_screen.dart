import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WinCrypto • Wallet'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Маржинальный баланс', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  SizedBox(height: 6),
                  Text('\$25,400.00 USDT', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('Доступно для торговли: \$18,200.00 USDT', style: TextStyle(color: AppTheme.primaryColor, fontSize: 13)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Открытые позиции', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _buildPos('BTC Long 25x', 'Вход: \$66,200', '+\$1,620.00 (+48.8%)', true),
            _buildPos('ETH Short 15x', 'Вход: \$3,580', '+\$420.00 (+12.3%)', true),
            _buildPos('SOL Long 20x', 'Вход: \$156.00', '-\$85.00 (-2.4%)', false),
          ],
        ),
      ),
    );
  }

  Widget _buildPos(String title, String entry, String pnl, bool profit) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
              const SizedBox(height: 4),
              Text(entry, style: const TextStyle(color: Colors.white60, fontSize: 12)),
            ],
          ),
          Text(pnl, style: TextStyle(color: profit ? Colors.greenAccent : Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 14)),
        ],
      ),
    );
  }
}
