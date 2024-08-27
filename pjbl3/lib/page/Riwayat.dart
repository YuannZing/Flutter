import 'package:flutter/material.dart';
import 'package:pjbl3/constans.dart';
import 'package:pjbl3/page/detail_lapangan.dart';

class riwayat extends StatefulWidget {
  const riwayat({super.key});

  @override
  _riwayat createState() => _riwayat();
}

class _riwayat extends State<riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              width: 310,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        alignment: Alignment.topLeft,
                        child: Text(
                          '23 Februari 2024',
                          style: Robototextstyle.copyWith(
                              fontSize: 12,
                              fontWeight: SemiBold,
                              color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 105,
                                  width: 105,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // Menambahkan border radius
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/foto_basket/gambar1.png'),
                                      fit: BoxFit
                                          .cover, // Menyesuaikan gambar ke dalam container
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Lapangan Jaya',
                          style: Robototextstyle.copyWith(
                              fontSize: 14,
                              fontWeight: SemiBold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '08:00 - 09:00',
                          style: Robototextstyle.copyWith(
                              fontSize: 12,
                              fontWeight: SemiBold,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Rp.50.000',
                          style: Robototextstyle.copyWith(
                              fontSize: 12,
                              fontWeight: SemiBold,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 100,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Primarycolor,
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const detail()),
                                );
                              },
                              splashColor:
                                  const Color.fromARGB(255, 206, 206, 206),
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                    left: 5, top: 5, bottom: 5, right: 5),
                                child: Text(
                                  'Pesan Lagi',
                                  style: Robototextstyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: SemiBold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
