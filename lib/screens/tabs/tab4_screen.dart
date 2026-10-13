import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final news = [
      {'title': 'Институциональный приток в ETF превысил \$420M за сутки', 'time': '20 мин назад', 'cat': 'Рынки'},
      {'title': 'Обновление сети Ethereum снизило комиссии второго уровня на 40%', 'time': '1 час назад', 'cat': 'Технологии'},
      {'title': 'Хешрейт сети Биткоин достиг нового исторического максимума', 'time': '3 часа назад', 'cat': 'Майнинг'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • News'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Крипто-лента новостей', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...news.map((n) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(color: AppTheme.primaryColor.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(6)),
                        child: Text(n['cat']!, style: const TextStyle(color: AppTheme.primaryColor, fontSize: 11, fontWeight: FontWeight.bold)),
                      ),
                      Text(n['time']!, style: const TextStyle(color: Colors.white54, fontSize: 11)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(n['title']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14, height: 1.3)),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
