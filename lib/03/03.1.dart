import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Phases',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Basic Romanian to Latin Phrases'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer audioPlayer = AudioPlayer();

  final List<String> _phrases = <String>[
    'Salut',
    'Salve',
    'Mancare',
    'Cibus',
    'Mama',
    'Mater',
    'Tata',
    'Pater',
    'Somn',
    'Somnum',
  ];

  final List<String> _soundsList = <String>[
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=salut&tl=ro&total=1&idx=0&textlen=5',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=Salve&tl=la&total=1&idx=0&textlen=5',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=mancare&tl=ro&total=1&idx=0&textlen=7',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=cibus&tl=la&total=1&idx=0&textlen=5',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=mama&tl=ro&total=1&idx=0&textlen=4',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=mater&tl=la&total=1&idx=0&textlen=5',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=tata&tl=ro&total=1&idx=0&textlen=4',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=pater&tl=la&total=1&idx=0&textlen=5',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=somn&tl=ro&total=1&idx=0&textlen=4',
    'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=somnum&tl=la&total=1&idx=0&textlen=6'
  ];

  Future<void> _playSound(int index) async {
    await audioPlayer.play(_soundsList.elementAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: _phrases.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 32.0,
                      crossAxisSpacing: 32.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          _playSound(index);
                        },
                        child: AnimatedContainer(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topCenter,
                                  colors: <Color>[Colors.blue, Colors.yellow, Colors.red]),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            duration: const Duration(milliseconds: 250),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                _phrases[index],
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
