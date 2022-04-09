import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class BichosPage extends StatefulWidget {
  const BichosPage({Key? key}) : super(key: key);

  @override
  State<BichosPage> createState() => _BichosPageState();
}

class _BichosPageState extends State<BichosPage> {
  final AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio) {
    _audioCache.play(nomeAudio + ".mp3");
  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll([
      "cao.mp3",
      "gato.mp3",
      "leao.mp3",
      "macaco.mp3",
      "ovelha.mp3",
      "vaca.mp3",
    ]);
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      //scrollDirection: Axis.vertical,
      children: [
        GestureDetector(
          onTap: () {
            _executar("cao");
          },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("gato");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("leao");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("macaco");
          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("ovelha");
          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("vaca");
          },
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
