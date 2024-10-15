import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RenkDegistirmeSayfasi(),
    );
  }
}

class RenkDegistirmeSayfasi extends StatefulWidget {
  @override
  _RenkDegistirmeEkraniDurumu createState() => _RenkDegistirmeEkraniDurumu();
}

class _RenkDegistirmeEkraniDurumu extends State<RenkDegistirmeSayfasi> {
  Color _arkaPlanRengi = Colors.blue.shade900;
  void _renkDegistir() {
    setState(() {
      if (_arkaPlanRengi == Colors.yellow) {
        _arkaPlanRengi = Colors.blue.shade900;
      } else {
        _arkaPlanRengi = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _arkaPlanRengi,
      body: Center(
        child: ElevatedButton(
          onPressed: _renkDegistir,
          child: Text('Rengi Değiştir'),
        ),
      ),
    );
  }
}
