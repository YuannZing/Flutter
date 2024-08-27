import 'package:flutter/material.dart';
import 'package:pjbl3/constans.dart';
import 'package:pjbl3/page/detail_lapangan.dart';

class basket extends StatefulWidget {
  const basket({super.key});

  @override
  _basketstate createState() => _basketstate();
}

class _basketstate extends State<basket> {
  final List<String> items = List.generate(50, (index) => 'Item $index');
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems.addAll(items);
  }

  void filterList(String query) {
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      //Start Appbar
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        title: Text(
          'Lapangan Basket',
          style: Robototextstyle.copyWith(fontSize: 15, fontWeight: bold),
        ),
      ),
      //End Appbar

      body: SingleChildScrollView(
        child: Column(
          children: [
            // //Start Search
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 15),
              child: TextField(
                onChanged: (value) => filterList(value),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Search',
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Tambahkan border radius di sini
                  ),
                ),
              ),
            ),

            // //End Seacrh

            //Start List Lapangan
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 310,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const detail()),
                          );
                        },
                        splashColor: const Color.fromARGB(255, 206, 206, 206),
                        child: Container(
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
                              Positioned(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            const EdgeInsets.only(left: 115, top: 5),
                                        child: Text(
                                          'Lapangan Jaya',
                                          style: Robototextstyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: extrabold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4.1/5.0',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4,6 Km',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rp.50.000',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: black,
                                                  color: Primarycolor),
                                            ),
                                            Text(
                                              ' / jam',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: SemiBold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 310,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const detail()),
                          );
                        },
                        splashColor: const Color.fromARGB(255, 206, 206, 206),
                        child: Container(
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
                              Positioned(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            const EdgeInsets.only(left: 115, top: 5),
                                        child: Text(
                                          'Lapangan Jaya',
                                          style: Robototextstyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: extrabold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4.1/5.0',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4,6 Km',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rp.50.000',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: black,
                                                  color: Primarycolor),
                                            ),
                                            Text(
                                              ' / jam',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: SemiBold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 310,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const detail()),
                          );
                        },
                        splashColor: const Color.fromARGB(255, 206, 206, 206),
                        child: Container(
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
                              Positioned(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            const EdgeInsets.only(left: 115, top: 5),
                                        child: Text(
                                          'Lapangan Jaya',
                                          style: Robototextstyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: extrabold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4.1/5.0',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4,6 Km',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rp.50.000',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: black,
                                                  color: Primarycolor),
                                            ),
                                            Text(
                                              ' / jam',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: SemiBold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 310,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const detail()),
                          );
                        },
                        splashColor: const Color.fromARGB(255, 206, 206, 206),
                        child: Container(
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
                              Positioned(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            const EdgeInsets.only(left: 115, top: 5),
                                        child: Text(
                                          'Lapangan Jaya',
                                          style: Robototextstyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: extrabold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4.1/5.0',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4,6 Km',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rp.50.000',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: black,
                                                  color: Primarycolor),
                                            ),
                                            Text(
                                              ' / jam',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: SemiBold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 310,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const detail()),
                          );
                        },
                        splashColor: const Color.fromARGB(255, 206, 206, 206),
                        child: Container(
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
                              Positioned(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            const EdgeInsets.only(left: 115, top: 5),
                                        child: Text(
                                          'Lapangan Jaya',
                                          style: Robototextstyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: extrabold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4.1/5.0',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4,6 Km',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rp.50.000',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: black,
                                                  color: Primarycolor),
                                            ),
                                            Text(
                                              ' / jam',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: SemiBold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 310,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const detail()),
                          );
                        },
                        splashColor: const Color.fromARGB(255, 206, 206, 206),
                        child: Container(
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
                              Positioned(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            const EdgeInsets.only(left: 115, top: 5),
                                        child: Text(
                                          'Lapangan Jaya',
                                          style: Robototextstyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: extrabold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4.1/5.0',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4,6 Km',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rp.50.000',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: black,
                                                  color: Primarycolor),
                                            ),
                                            Text(
                                              ' / jam',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: SemiBold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 310,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const detail()),
                          );
                        },
                        splashColor: const Color.fromARGB(255, 206, 206, 206),
                        child: Container(
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
                              Positioned(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            const EdgeInsets.only(left: 115, top: 5),
                                        child: Text(
                                          'Lapangan Jaya',
                                          style: Robototextstyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: extrabold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4.1/5.0',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              '4,6 Km',
                                              style: Robototextstyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: SemiBold,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 115,
                                            top: 5), // Atur padding di sini
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rp.50.000',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: black,
                                                  color: Primarycolor),
                                            ),
                                            Text(
                                              ' / jam',
                                              style: Robototextstyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: SemiBold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            //End List Lapangan
          ],
        ),
      ),
    );
  }
}
