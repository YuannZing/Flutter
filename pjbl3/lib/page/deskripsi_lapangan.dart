import 'package:flutter/material.dart';
import 'package:pjbl3/constans.dart';

class Deskripsi extends StatefulWidget {
  const Deskripsi({super.key});

  @override
  _deskripsistate createState() => _deskripsistate();
}

class _deskripsistate extends State<Deskripsi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Start Nama Lapangan
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, top: 30), // Atur padding di sini
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Lapangan : ',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: black, color: Colors.black),
                  ),
                  Text(
                    'Lapangan Jaya',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: Reguler, color: Colors.black),
                  ),
                ],
              ),
            ),
            //End Nama Lapangan

            //Start Harga
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, top: 15), // Atur padding di sini
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harga Sewa : ',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: black, color: Colors.black),
                  ),
                  Text(
                    'Rp.50.000 / jam',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: Reguler, color: Colors.black),
                  ),
                ],
              ),
            ),
            //End Harga

            //Start Luas
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, top: 15), // Atur padding di sini
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Luas Lapangan : ',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: black, color: Colors.black),
                  ),
                  Text(
                    '28 meter x 15 meter,',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: Reguler, color: Colors.black),
                  ),
                ],
              ),
            ),
            //End Luas

            //Start Alamat
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, top: 15), // Atur padding di sini
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alamat : ',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: black, color: Colors.black),
                  ),
                  Text(
                    'Jl. Tanimbar',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: Reguler, color: Colors.black),
                  ),
                ],
              ),
            ),
            //End Alamat

            //Start Luas
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, top: 15), // Atur padding di sini
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fasilitas : ',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: black, color: Colors.black),
                  ),
                  Text(
                    '- 5 bola basket\n- 2 botol minum air mineral',
                    style: Robototextstyle.copyWith(
                        fontSize: 14, fontWeight: Reguler, color: Colors.black),
                  ),
                ],
              ),
            ),
            //End Luas
          ],
        ),
      ),
    );
  }
}
