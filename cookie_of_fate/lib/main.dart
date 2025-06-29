import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const CookieOfFateApp());
}

class CookieOfFateApp extends StatelessWidget {
  const CookieOfFateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookie of Fate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const FortuneScreen(),
    );
  }
}

class FortuneScreen extends StatefulWidget {
  const FortuneScreen({super.key});

  @override
  State<FortuneScreen> createState() => _FortuneScreenState();
}

class _FortuneScreenState extends State<FortuneScreen> {
  final List<String> _fortunes = [
    "🌟 Great things are coming your way!",
    "🍀 Luck favors the bold.",
    "🎯 Focus and you'll find success.",
    "🌈 Your future is as bright as your smile.",
    "💡 A creative idea will spark soon.",
    "🚀 Big opportunities await you.",
    "🌻 Today is your chance to shine.",
    "🧠 Trust your instincts — they’re right.",
    "💖 You are loved more than you know.",
    "✨ The universe is aligning in your favor.",
  ];

  String _currentFortune = "Tap the cookie to reveal your fate 🍪";

  void _showRandomFortune() {
    final random = Random();
    setState(() {
      _currentFortune = _fortunes[random.nextInt(_fortunes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cookie of Fate'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _showRandomFortune,
                child: Image.asset('assets/images/cookies.png',height: 200, width: 200, fit: BoxFit.cover),
              ),
              const SizedBox(height: 30),
              Text(
                _currentFortune,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: _showRandomFortune,
                icon: const Icon(Icons.auto_awesome),
                label: const Text("Crack the Cookie"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
