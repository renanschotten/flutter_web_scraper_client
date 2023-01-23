import 'package:flutter/material.dart';
import 'package:web_scraper/presentation/web_scraper_page.dart';
import 'di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const WebScraper());
}

class WebScraper extends StatelessWidget {
  const WebScraper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WebScraperPage(),
    );
  }
}
