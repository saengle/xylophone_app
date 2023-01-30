import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class Xlyophone extends StatefulWidget {
  const Xlyophone({Key? key}) : super(key: key);

  @override
  State<Xlyophone> createState() => _XlyophoneState();
}

class _XlyophoneState extends State<Xlyophone> {
  Soundpool pool = Soundpool.fromOptions(options: SoundpoolOptions.kDefault);
  List<int> _soundIds = [];
  bool _isloading = true;

  @override
  void initState() {
    super.initState();
    initSoundPool();
  }

  Future<void> initSoundPool() async {
    int soundId = await rootBundle
        .load('assets/sounds/C.wav')
        .then((soundData) => pool.load(soundData));
    _soundIds.add(soundId);
    soundId = await rootBundle
        .load('assets/sounds/D.wav')
        .then((soundData) => pool.load(soundData));
    _soundIds.add(soundId);
    soundId = await rootBundle
        .load('assets/sounds/E.wav')
        .then((soundData) => pool.load(soundData));
    _soundIds.add(soundId);
    soundId = await rootBundle
        .load('assets/sounds/F.wav')
        .then((soundData) => pool.load(soundData));
    _soundIds.add(soundId);
    soundId = await rootBundle
        .load('assets/sounds/G.wav')
        .then((soundData) => pool.load(soundData));
    _soundIds.add(soundId);
    soundId = await rootBundle
        .load('assets/sounds/A.wav')
        .then((soundData) => pool.load(soundData));
    _soundIds.add(soundId);
    soundId = await rootBundle
        .load('assets/sounds/B.wav')
        .then((soundData) => pool.load(soundData));
    _soundIds.add(soundId);
    setState(() {
      _isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('실로폰'),
      ),
      body: _isloading
          ? const Center(child: CircularProgressIndicator())
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: gunban('도', Colors.red, _soundIds[0]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: gunban('레', Colors.orange, _soundIds[1]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: gunban('미', Colors.yellow, _soundIds[2]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28),
                  child: gunban('파', Colors.green, _soundIds[3]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: gunban('솔', Colors.blue, _soundIds[4]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 36),
                  child: gunban('라', Colors.indigo, _soundIds[5]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: gunban('시', Colors.purple, _soundIds[6]),
                ),
              ],
            ),
    );
  }

  Widget gunban(String text, Color color, int soundId) {
    return GestureDetector(
      onTap: () {
        pool.play(soundId);
      },
      child: Container(
        width: 60,
        height: double.infinity,
        color: color,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
