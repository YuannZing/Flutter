import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:pjbl3/constans.dart';
import 'package:pjbl3/page/detail_pembayaran.dart';

class Pilih_Waktu extends StatefulWidget {
  const Pilih_Waktu({super.key});

  @override
  _PilihWaktustate createState() => _PilihWaktustate();
}

class _PilihWaktustate extends State<Pilih_Waktu> {
  late GroupButtonController _checkboxesControllertanggal;
  late GroupButtonController _checkboxesControllerwaktu;
  late GroupButtonController _checkboxesControllerdurasi;

  final _checkboxButtonstanggal = [
    '23 Feb\nJumat',
    '24 Feb\nSabtu',
    '25 Feb\nMinggu',
    '26 Feb\nSenin',
    '27 Feb\nSelasa',
    '28 Feb\nRabu',
    '29 Feb\nKamis',
  ];

  final _checkboxButtonswaktu = [
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
  ];

  final _checkboxButtonsdurasi = [
    '1 Jam',
    '2 Jam',
    '3 Jam',
    '4 Jam',
  ];

  @override
  void initState() {
    _checkboxesControllertanggal = GroupButtonController(
      selectedIndexes: [0], // Indeks yang dipilih
      disabledIndexes: [4], // Indeks yang dinonaktifkan
      onDisablePressed: (index) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('${_checkboxButtonstanggal[index]} is disabled')),
      ),
    );

    _checkboxesControllerwaktu = GroupButtonController(
      disabledIndexes: [2, 3], // Indeks yang dinonaktifkan
      onDisablePressed: (index) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${_checkboxButtonswaktu[index]} is disabled')),
      ),
    );

    _checkboxesControllerdurasi = GroupButtonController(
      disabledIndexes: [2, 3], // Indeks yang dinonaktifkan
      onDisablePressed: (index) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${_checkboxButtonsdurasi[index]} is disabled')),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pilih Waktu',
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
            //Start Penjelasan Warna
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Primarycolor,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Pilihan Anda',
                      style: Robototextstyle.copyWith(
                          fontSize: 10, fontWeight: Reguler),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                      color: const Color.fromRGBO(217, 217, 217, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Tersedia',
                      style: Robototextstyle.copyWith(
                          fontSize: 10, fontWeight: Reguler),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(217, 217, 217, 0.5),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Tidak Tersedia',
                      style: Robototextstyle.copyWith(
                          fontSize: 10, fontWeight: Reguler),
                    ),
                  ),
                ],
              ),
            ),
            //End Penjelasan Warna

            //Start Garis Pembatas
            Divider(
              color: backgroundcolor, // Warna garis
              thickness: 10, // Ketebalan garis
            ),
            //End Garis Pembatas

            //Start Pilih Tanggal
            Container(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 20,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Pilih Tanggal',
                    style: Robototextstyle.copyWith(
                      fontSize: 14,
                      fontWeight: SemiBold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GroupButton(
                        isRadio: true,
                        onSelected: (value, index, isSelected) {
                          debugPrint(
                              'Button: ${_checkboxButtonstanggal[index]} index: $index isSelected: $isSelected');
                        },
                        controller: _checkboxesControllertanggal,
                        options: GroupButtonOptions(
                            spacing: 15,
                            buttonWidth: 70,
                            buttonHeight: 50,
                            selectedBorderColor: darkPrimarycolor,
                            selectedColor: Primarycolor,
                            borderRadius: BorderRadius.circular(5),
                            unselectedBorderColor: Colors.grey,
                            unselectedColor: const Color.fromRGBO(217, 217, 217, 1),
                            alignment: Alignment.center,
                            mainGroupAlignment: MainGroupAlignment.center,
                            crossGroupAlignment: CrossGroupAlignment.center,
                            selectedTextStyle: Robototextstyle.copyWith(
                                fontSize: 14,
                                fontWeight: Medium,
                                color: Colors.white),
                            unselectedTextStyle: Robototextstyle.copyWith(
                                fontSize: 14,
                                fontWeight: Medium,
                                color: Colors.black),
                            groupingType: GroupingType.wrap),
                        buttons: _checkboxButtonstanggal),
                  )
                ],
              ),
            ),
            //End Pilih Tanggal

            //Start Garis Pembatas
            Divider(
              color: backgroundcolor, // Warna garis
              thickness: 10, // Ketebalan garis
            ),
            //End Garis Pembatas

            //Start Pilih Waktu
            Container(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.timelapse_rounded,
                    size: 20,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Pilih Jam',
                    style: Robototextstyle.copyWith(
                      fontSize: 14,
                      fontWeight: SemiBold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              child: Column(
                children: [
                  GroupButton(
                    isRadio: true,
                    onSelected: (value, index, isSelected) {
                      debugPrint(
                          'Button: ${_checkboxButtonswaktu[index]} index: $index isSelected: $isSelected');
                    },
                    controller: _checkboxesControllerwaktu,
                    options: GroupButtonOptions(
                        spacing: 15,
                        buttonWidth: 67,
                        buttonHeight: 30,
                        selectedBorderColor: darkPrimarycolor,
                        selectedColor: Primarycolor,
                        borderRadius: BorderRadius.circular(5),
                        unselectedBorderColor: Colors.grey,
                        unselectedColor: const Color.fromRGBO(217, 217, 217, 1),
                        mainGroupAlignment: MainGroupAlignment.center,
                        crossGroupAlignment: CrossGroupAlignment.center,
                        selectedTextStyle: Robototextstyle.copyWith(
                            fontSize: 14,
                            fontWeight: Medium,
                            color: Colors.white),
                        unselectedTextStyle: Robototextstyle.copyWith(
                            fontSize: 14,
                            fontWeight: Medium,
                            color: Colors.black),
                        groupingType: GroupingType.wrap),
                    buttons: _checkboxButtonswaktu,
                  ),
                ],
              ),
            ),
            //End Pilih Waktu

            //Start Garis Pembatas
            Divider(
              color: backgroundcolor, // Warna garis
              thickness: 10, // Ketebalan garis
            ),
            //End Garis Pembatas

            //Start Pilih Durasi
            Container(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.hourglass_bottom,
                    size: 20,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Pilih Durasi',
                    style: Robototextstyle.copyWith(
                      fontSize: 14,
                      fontWeight: SemiBold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  GroupButton(
                    isRadio: true,
                    onSelected: (value, index, isSelected) {
                      debugPrint(
                          'Button: ${_checkboxButtonsdurasi[index]} index: $index isSelected: $isSelected');
                    },
                    controller: _checkboxesControllerdurasi,
                    options: GroupButtonOptions(
                        spacing: 15,
                        buttonWidth: 67,
                        buttonHeight: 30,
                        selectedBorderColor: darkPrimarycolor,
                        selectedColor: Primarycolor,
                        borderRadius: BorderRadius.circular(5),
                        unselectedBorderColor: Colors.grey,
                        unselectedColor: const Color.fromRGBO(217, 217, 217, 1),
                        mainGroupAlignment: MainGroupAlignment.center,
                        crossGroupAlignment: CrossGroupAlignment.center,
                        selectedTextStyle: Robototextstyle.copyWith(
                            fontSize: 14,
                            fontWeight: Medium,
                            color: Colors.white),
                        unselectedTextStyle: Robototextstyle.copyWith(
                            fontSize: 14,
                            fontWeight: Medium,
                            color: Colors.black),
                        groupingType: GroupingType.wrap),
                    buttons: _checkboxButtonsdurasi,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 3, 10, 10),
              child: Row(
                children: [
                  Text(
                    "Rp.50.000",
                    style: Robototextstyle.copyWith(
                        fontSize: 12, fontWeight: black, color: Primarycolor),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Text(
                    "Rp.100.000",
                    style: Robototextstyle.copyWith(
                        fontSize: 12,
                        fontWeight: black,
                        color: const Color.fromRGBO(129, 129, 129, 1)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Rp.150.000",
                    style: Robototextstyle.copyWith(
                        fontSize: 12, fontWeight: black, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Rp.200.000",
                    style: Robototextstyle.copyWith(
                        fontSize: 12, fontWeight: black, color: Colors.grey),
                  ),
                ],
              ),
            ),
            //End Pilih Durasi
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(1),
            border: Border(
              top: BorderSide(
                color: backgroundcolor, // Warna garis
                width: 5, // Lebar garis
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jumat, 24 Februari 2024',
                      style: Robototextstyle.copyWith(
                          fontSize: 10, fontWeight: Medium),
                    ),
                    Text(
                      '08:00 - 09:00',
                      style: Robototextstyle.copyWith(
                          fontSize: 10, fontWeight: Medium),
                    ),
                    Text(
                      'Rp.50.000',
                      style: Robototextstyle.copyWith(
                          fontSize: 14,
                          fontWeight: SemiBold,
                          color: Primarycolor),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 35,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Primarycolor),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const pembayaran()),
                        );
                      },
                      splashColor: Primarycolor,
                      child: Container(
                        alignment: Alignment.center,
                        child: Center(
                          child: Text(
                            'Lanjut',
                            style: Robototextstyle.copyWith(
                                fontSize: 15,
                                fontWeight: black,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
