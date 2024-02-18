import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/main.dart';
import 'package:nova_politica/pages/PoliticalPartiesPage.dart';
import 'package:nova_politica/pages/partidos/BlocoDeEsquerda.dart';
import 'package:nova_politica/pages/partidos/CDSPartidoPopular.dart';
import 'package:nova_politica/pages/partidos/Chega.dart';
import 'package:nova_politica/pages/partidos/ColigacaoDemocraticaUnitaria.dart';
import 'package:nova_politica/pages/partidos/IniciativaLiberal.dart';
import 'package:nova_politica/pages/partidos/Livre.dart';
import 'package:nova_politica/pages/partidos/PartidoSocialDemocrata.dart';
import 'package:nova_politica/pages/partidos/PessoasAnimaisNatureza.dart';

import 'GuidePage.dart';
import 'partidos/PartidoSocialista.dart';

class Result extends StatelessWidget {
  final int resultScoreX;
  final int resultScoreY;
  final Function resetHandler;

  final Map<String, List<int>> partyCoordinates = {
    'CH': [190, -330],
    'CDS-PP': [220, -250],
    'IL': [400, 280],
    'PSD': [80, 150],
    'PS': [-310, 300],
    'L': [-430, 500],
    'BE': [-440, 300],
    'CDU': [-400, 160],
    'PAN': [-130, 300],
  };

  Result(this.resultScoreX, this.resultScoreY, this.resetHandler, {Key? key})
      : super(key: key);

  double calculateDistance(List<int> coords1, List<int> coords2) {
    int dx = coords1[0] - coords2[0];
    int dy = coords1[1] - coords2[1];
    return sqrt(dx * dx + dy * dy);
  }

  String findNearestParty() {
    String nearestParty = '';
    double minDistance = double.infinity;
    partyCoordinates.forEach((party, coords) {
      double distance = calculateDistance([resultScoreX, resultScoreY], coords);
      if (distance < minDistance) {
        minDistance = distance;
        nearestParty = party;
      }
    });
    return nearestParty;
  }

  @override
  Widget build(BuildContext context) {
    String nearestParty = findNearestParty();
    return ListView(children: [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 24,
            ),
            Text(
              'O Partido do qual as suas respostas mais se aproximam é o $nearestParty',
              style: (const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
                height: 24,
            ),
            TextButton(
              onPressed: () => {
                if(nearestParty == 'CH'){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CH()),
                    ),
                }
                else if (nearestParty == 'CDS-PP')
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CDS()),
                    ),
                  }
                  else if (nearestParty == 'IL')
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IL()),
                    ),
                  }
                  else if (nearestParty == 'PSD')
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PSD()),
                    ),
                  }
                  else
                   if (nearestParty == 'PS')
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PS()),
                    ),
                  }
                  else if (nearestParty == 'IL')
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const L()),
                    ),
                  }
                  else if (nearestParty == 'IL')
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BE()),
                    ),
                  }
                else if (nearestParty == 'PS')
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CDU()),
                    ),
                  }
                  else{
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PAN()),
                    ),
                  }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                minimumSize: MaterialStateProperty.all(const Size(70.0, 70.0)),
              ),
              child: Container(
                padding: const EdgeInsets.all(14),
                child: const Text(
                  'Saber Mais',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
            SizedBox(
                height: 24,
            ),
            const Text(
              'Baseado neste gráfico:',
              style: (TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
                height: 12,
            ),
            Image.network(
                'https://cdn.discordapp.com/attachments/1207684391283982357/1208362416929509386/qFAAQgAAEIQAACEIAABCBwmQTD3Jfz08F8VtmAAAAAElFTkSuQmCC.png?ex=65e30232&is=65d08d32&hm=16d9070231c367b6425a901e0fe69346efb045cea15c8d93d826d7b0eb24d1bd&',
                width: 400,
                height: 400,
            ),
            SizedBox(
                height: 12,
            ),
            TextButton(
              onPressed: () => resetHandler(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
                minimumSize: MaterialStateProperty.all(const Size(70.0, 70.0)),
              ),
              child: Container(
                padding: const EdgeInsets.all(14),
                child: const Text(
                  'Recomeçar',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
            ),
            SizedBox(
                height: 24,
            ),
          ],
        ),
      )
    ]);
  }
}
