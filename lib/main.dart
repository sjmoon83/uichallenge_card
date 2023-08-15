import 'package:flutter/material.dart';
import 'package:uiclone/cards/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  DateTime getDate = DateTime.now();
  List<int> dateList = [];

  late int getDay = getDate.day;

  List<int> addDate() {
    for (int i = getDay; i <= 31; i++) {
      dateList.add(i);
    }
    return dateList;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 24, 24),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image(
                      image: NetworkImage(
                          'https://lh3.googleusercontent.com/a/AGNmyxYwxU2dRzdEZAJ3GsRy2lZ4yw6HXxUtaVAtzj4p2w=s576'),
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'MONDAY 16',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ListView(
                        children: [
                          Text(
                            dateList.toString(),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                title01: 'DESIGN',
                title02: 'MEETING',
                month01: '11',
                month02: '12',
                day01: '30',
                day02: '20',
                names01: 'ALEX',
                names02: 'HELENA',
                names03: 'NANA',
                cardColor01: 252,
                cardColor02: 249,
                cardColor03: 68,
              ),
              const SizedBox(
                height: 8,
              ),
              const CurrencyCard(
                title01: 'DAILY',
                title02: 'PROJECT',
                month01: '12',
                month02: '14',
                day01: '35',
                day02: '10',
                names01: 'ME',
                names02: 'RICHARD',
                names03: 'CYTI',
                cardColor01: 136,
                cardColor02: 82,
                cardColor03: 194,
              ),
              const SizedBox(
                height: 8,
              ),
              const CurrencyCard(
                title01: 'WEEKLY',
                title02: 'PLANNING',
                month01: '15',
                month02: '16',
                day01: '00',
                day02: '30',
                names01: 'DEN',
                names02: 'NANA',
                names03: 'MARK',
                cardColor01: 176,
                cardColor02: 238,
                cardColor03: 59,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
