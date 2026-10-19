import 'package:flutter/material.dart';

void main() {
  runApp(const QuotexBotApp());
}

class QuotexBotApp extends StatelessWidget {
  const QuotexBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quotex Signal Bot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotex Signal Bot'),
        backgroundColor: const Color(0xFF1E293B),
        centerTitle: true,
      ),
      body: Padding(
        padding: const InitiativePadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              'اختر قسم التداول المطلوب:',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            _buildMenuButton(context, '🌐 الأسواق الحقيقية (TradingView)', Colors.blue),
            const SizedBox(height: 15),
            _buildMenuButton(context, '📈 أسواق الـ OTC', Colors.orange),
            const SizedBox(height: 15),
            _buildMenuButton(context, '🎯 قائمة 10 صفقات مسبقة', Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {
        // تفاعل الزرار
      },
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class InitiativePadding extends EdgeInsets {
  const InitiativePadding() : super.all(20.0);
}
