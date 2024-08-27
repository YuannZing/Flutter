import 'package:flutter/material.dart';
import 'package:pjbl3/constans.dart';
import 'package:pjbl3/page/bottom_navbar.dart';

class pembayaran extends StatefulWidget {
  const pembayaran({super.key});

  @override
  _pembayaranstate createState() => _pembayaranstate();
}

List<String> options = ['Option 1'];

class _pembayaranstate extends State<pembayaran> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Ringkasan Order',
          style: Robototextstyle.copyWith(fontSize: 15, fontWeight: black),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2.0),
          child: Container(
            color: Colors.grey, // Warna garis
            height: 1.0, // Tinggi garis
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(23),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey, // Warna garis
                    width: 2, // Lebar garis
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Menambahkan border radius
                      image: const DecorationImage(
                        image: AssetImage('assets/foto_basket/gambar1.png'),
                        fit: BoxFit
                            .cover, // Menyesuaikan gambar ke dalam container
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lapangan Jaya',
                        style: Robototextstyle.copyWith(
                            fontSize: 16, fontWeight: SemiBold),
                      ),
                      Text(
                        '1 Jam',
                        style: Robototextstyle.copyWith(
                            fontSize: 14, fontWeight: Reguler),
                      ),
                      Text(
                        '24 Februari 2024',
                        style: Robototextstyle.copyWith(
                            fontSize: 14, fontWeight: Reguler),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: backgroundcolor,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nomor Order : ',
                      style: Robototextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: Reguler,
                          color: Colors.black.withOpacity(0.55)),
                    ),
                    const Divider(
                      color: Colors.grey, // Warna garis
                      thickness: 1, // Ketebalan garis
                    ),
                    Text(
                      'Detail Transaksi',
                      style: Robototextstyle.copyWith(
                          fontSize: 13,
                          fontWeight: SemiBold,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Lapangan',
                          style: Robototextstyle.copyWith(
                              fontSize: 11,
                              fontWeight: Medium,
                              color: Colors.black),
                        ),
                        Text(
                          'Lapangan Jaya',
                          style: Robototextstyle.copyWith(
                              fontSize: 11,
                              fontWeight: Reguler,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Durasi',
                          style: Robototextstyle.copyWith(
                              fontSize: 11,
                              fontWeight: Medium,
                              color: Colors.black),
                        ),
                        Text(
                          '2 Jam',
                          style: Robototextstyle.copyWith(
                              fontSize: 11,
                              fontWeight: Reguler,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Harga Sewa',
                          style: Robototextstyle.copyWith(
                              fontSize: 11,
                              fontWeight: Medium,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp.50.000',
                              style: Robototextstyle.copyWith(
                                  fontSize: 11,
                                  fontWeight: Reguler,
                                  color: Colors.black),
                            ),
                            Text(
                              ' x 1',
                              style: Robototextstyle.copyWith(
                                  fontSize: 11,
                                  fontWeight: Reguler,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey, // Warna garis
                      thickness: 1, // Ketebalan garis
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TOTAL TAGIHAN  ',
                          style: Robototextstyle.copyWith(
                              fontSize: 13,
                              fontWeight: SemiBold,
                              color: Colors.black),
                        ),
                        Text(
                          'Rp.50.000',
                          style: Robototextstyle.copyWith(
                              fontSize: 11,
                              fontWeight: Reguler,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              color: backgroundcolor,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Metode Pembayaran',
                      style: Robototextstyle.copyWith(
                          fontSize: 13,
                          fontWeight: SemiBold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text('Pembayaran Langsung'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 56,
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          decoration: BoxDecoration(
              color: darkPrimarycolor.withOpacity(0.8),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 10),
                  blurRadius: 10,
                )
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExamplePage()),
                );
              },
              splashColor: Primarycolor,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Bayar Sekarang',
                  style: Robototextstyle.copyWith(
                      fontSize: 20, fontWeight: black, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
