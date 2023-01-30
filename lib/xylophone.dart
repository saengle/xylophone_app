import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Xlyophone extends StatelessWidget {
  const Xlyophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('실로폰'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: gunban('도', Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: gunban('레', Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: gunban('미', Colors.yellow),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28),
            child: gunban('파', Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: gunban('솔', Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 36),
            child: gunban('라', Colors.indigo),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: gunban('시', Colors.purple),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 44),
            child: gunban('도', Colors.red),
          ),
        ],
      ),
    );
  }

  Widget gunban(String text, Color color) {
    return Container(
      width: 60,
      height: double.infinity,
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
