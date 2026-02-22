import 'dart:math';

import 'package:ata_sozleri/atasozulistesi.dart';
import 'package:flutter/material.dart';

class AtaSozleri extends StatefulWidget {
  const AtaSozleri({super.key});

  @override
  State<AtaSozleri> createState() => _AtaSozleriState();
}

class _AtaSozleriState extends State<AtaSozleri> {
  String metin = "Atasözü getirmek için butona basın.";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white38,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    metin,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 150),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final rastgeleatasozu = Random().nextInt(
                        atasozu_liste.length,
                      );
                      metin = atasozu_liste[rastgeleatasozu];
                    });
                  },
                  child: Text("ATASÖZÜ GETİR"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
