import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String title01, title02, month01, month02, day01, day02;
  final String names01, names02, names03;
  final int cardColor01, cardColor02, cardColor03;

  const CurrencyCard(
      {super.key,
      required this.title01,
      required this.title02,
      required this.month01,
      required this.month02,
      required this.day01,
      required this.day02,
      required this.names01,
      required this.names02,
      required this.names03,
      required this.cardColor01,
      required this.cardColor02,
      required this.cardColor03});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(cardColor01, cardColor02, cardColor03, 1),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          month01,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          day01,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '|',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          month02,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          day02,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title01,
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 62,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      title02,
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 62,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          names01,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          names02,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          names03,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
