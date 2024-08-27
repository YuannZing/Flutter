import 'package:flutter/material.dart';
import 'package:pjbl3/constans.dart';

class rate extends StatefulWidget {
  const rate({super.key});

  @override
  _ratestate createState() => _ratestate();
}

class _ratestate extends State<rate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Review dan Rating',
                style: Robototextstyle.copyWith(
                    fontSize: 15, fontWeight: extrabold),
              ),
            ),
            // Start Komentar 1
            Container(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 48,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5, top: 3),
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Alok',
                            style: Robototextstyle.copyWith(
                              fontSize: 15,
                              fontWeight: SemiBold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orange,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '4.0/5.0',
                              style: Robototextstyle.copyWith(
                                fontSize: 13,
                                fontWeight: SemiBold,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: backgroundcolor, // Warna garis
                  width: 2, // Lebar garis
                ),
              ),
              child: Text(
                'Lapangan nya sangat bagus sekali,saya suka',
                style:
                    Robototextstyle.copyWith(fontSize: 12, fontWeight: Reguler),
              ),
            ),
            Divider(
              color: backgroundcolor, // Warna garis
              thickness: 2, // Ketebalan garis
            ),
            // End Komentar 1

            // Start Komentar 2
            Container(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 48,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5, top: 3),
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Arwana',
                            style: Robototextstyle.copyWith(
                              fontSize: 15,
                              fontWeight: SemiBold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orange,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '2.0/5.0',
                              style: Robototextstyle.copyWith(
                                fontSize: 13,
                                fontWeight: SemiBold,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: backgroundcolor, // Warna garis
                  width: 2, // Lebar garis
                ),
              ),
              child: Text(
                'Lapangan nya cukup bagus,hanya saja sirkulasi udaranya lumayan buruk',
                style:
                    Robototextstyle.copyWith(fontSize: 12, fontWeight: Reguler),
              ),
            ),
            Divider(
              color: backgroundcolor, // Warna garis
              thickness: 2, // Ketebalan garis
            ),
            // End Komentar 2

            // Start Komentar 3
            Container(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 48,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5, top: 3),
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Alfi yanto',
                            style: Robototextstyle.copyWith(
                              fontSize: 15,
                              fontWeight: SemiBold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orange,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '5.0/5.0',
                              style: Robototextstyle.copyWith(
                                fontSize: 13,
                                fontWeight: SemiBold,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: backgroundcolor, // Warna garis
                  width: 2, // Lebar garis
                ),
              ),
              child: Text(
                'Bagus,murah dan terjangkau',
                style:
                    Robototextstyle.copyWith(fontSize: 12, fontWeight: Reguler),
              ),
            ),
            Divider(
              color: backgroundcolor, // Warna garis
              thickness: 2, // Ketebalan garis
            ),
            // End Komentar 3
          ]),
        ),
      ),
    );
  }
}
