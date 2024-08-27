import 'package:flutter/material.dart';
import 'package:pjbl3/constans.dart';
import 'package:pjbl3/page/lapangan_basket.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'Malang';

  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> myData = [
    Container(
      width: 300,
      height: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/diskon_slide.png"),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    double dropdownWidth = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 281,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/vector2.png"),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          // Start Selamat datang
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(top: 41, left: 35),
                            child: StrokeText(
                              text: "Selamat Datang,",
                              textStyle: OpenSanstextstyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              strokeColor: const Color.fromRGBO(0, 0, 0, 0.2),
                              strokeWidth: 1,
                            ),
                          ),
                          // End Selamat datang

                          // Start Nama
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(top: 1, left: 35),
                            child: StrokeText(
                              text: "Alfian",
                              textStyle: oswaldtextstyle.copyWith(
                                  fontSize: 36,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                              strokeColor: const Color.fromRGBO(0, 0, 0, 0.2),
                              strokeWidth: 1,
                            ),
                          ),
                          // End Nama

                          // Start List Kota
                          Container(
                            alignment: Alignment.topCenter,
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: dropdownWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: dropbackground,
                              ),
                              child: DropdownButton<String>(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 8,
                                ),
                                value: dropdownValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  'Malang',
                                  'Jakarta',
                                  'Surabaya',
                                  'Batu'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 8),
                                        Text(
                                          value,
                                          style: OpenSanstextstyle.copyWith(
                                              fontWeight: SemiBold),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                elevation: 8,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 36,
                                underline: null,
                                isExpanded: true,
                              ),
                            ),
                          ),
                          // End List Kota
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Start Carousel Slider Card
                    Column(
                      children: [
                        CarouselSlider(
                          items: myData,
                          carouselController: _controller,
                          options: CarouselOptions(
                              viewportFraction: 1,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 3.0 / 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: myData.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: 12.0,
                                height: 12.0,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white
                                            : Colors.black)
                                        .withOpacity(
                                            _current == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // END Carousel Slider Card
                  ],
                ),
              ],
            ),

            //Start Main Apa + Logo
            Row(
              children: [
                const SizedBox(width: 35),
                // Container(
                //   alignment: Alignment.topLeft,
                //   padding: EdgeInsets.only(left: 35),
                //   height: 30,
                //   width: 30,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(image: AssetImage('logo_main.png')),
                //     borderRadius: BorderRadius.circular(5),
                //   ),
                // ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Mau Main Apa?",
                  style: OpenSanstextstyle.copyWith(
                      fontSize: 15, fontWeight: SemiBold),
                ),
              ],
            ),
            //End Main Apa + Logo

            const SizedBox(
              height: 10,
            ),

            //Start icon button logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  splashColor: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 45,
                              width: 45,
                              child: Image.asset(
                                'assets/logo_futsal.png', // Ganti URL dengan URL gambar Anda
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Futsal',
                          style: OpenSanstextstyle.copyWith(
                              fontSize: 15, fontWeight: SemiBold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const basket()),
                    );
                  },
                  splashColor: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 45,
                              width: 45,
                              child: Image.asset(
                                'assets/logo_basket.png', // Ganti URL dengan URL gambar Anda
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Basket',
                          style: OpenSanstextstyle.copyWith(
                              fontSize: 15, fontWeight: SemiBold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 45,
                              width: 45,
                              child: Image.asset(
                                'assets/logo_badminton.png', // Ganti URL dengan URL gambar Anda
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Badminton',
                          textAlign: TextAlign.center,
                          style: OpenSanstextstyle.copyWith(
                              fontSize: 12, fontWeight: SemiBold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(3, 3, 0, 0),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/logo_tenis.png', // Ganti URL dengan URL gambar Anda
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Tenis',
                          style: OpenSanstextstyle.copyWith(
                              fontSize: 15, fontWeight: SemiBold),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            //End icon button logo

            const SizedBox(
              height: 30,
            ),

            //Start Riwayat Sewa

            //Start Teks Riwayat
            Row(
              children: [
                const SizedBox(
                  width: 35,
                ),
                // Container(
                //   alignment: Alignment.topLeft,
                //   width: 30,
                //   height: 30,
                //   decoration: BoxDecoration(
                //     image:
                //         DecorationImage(image: AssetImage('logo_riwayat.png')),
                //     borderRadius: BorderRadius.circular(5),
                //   ),
                // ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    'Riwayat Sewa Anda',
                    style: OpenSanstextstyle.copyWith(
                        fontSize: 15, fontWeight: SemiBold),
                  ),
                )
              ],
            ),
            //End Teks Riwayat
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 200,
                    height: 110,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Menambahkan border radius
                      image: const DecorationImage(
                        image:
                            AssetImage('assets/Gambar_riwayat/Rectangle1.png'),
                        fit: BoxFit
                            .cover, // Menyesuaikan gambar ke dalam container
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: StrokeText(
                            text: "Lapangan SOAD",
                            textStyle: OpenSanstextstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            strokeColor: const Color.fromRGBO(0, 0, 0, 1),
                            strokeWidth: 1,
                          ),
                          // child: Text(
                          //   'Teks di kiri bawah',
                          //   style: TextStyle(
                          //     fontSize: 12,
                          //     color: Colors.white,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 110,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Menambahkan border radius
                      image: const DecorationImage(
                        image:
                            AssetImage('assets/Gambar_riwayat/Rectangle2.png'),
                        fit: BoxFit
                            .cover, // Menyesuaikan gambar ke dalam container
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: StrokeText(
                            text: "Lapangan Bara Naga",
                            textStyle: OpenSanstextstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            strokeColor: const Color.fromRGBO(0, 0, 0, 1),
                            strokeWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 110,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Menambahkan border radius
                      image: const DecorationImage(
                        image:
                            AssetImage('assets/Gambar_riwayat/Rectangle3.png'),
                        fit: BoxFit
                            .cover, // Menyesuaikan gambar ke dalam container
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: StrokeText(
                            text: "Lapangan Warrior,",
                            textStyle: OpenSanstextstyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            strokeColor: const Color.fromRGBO(0, 0, 0, 1),
                            strokeWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
            //End Riwayat Sewa
          ],
        ),
      ),
    );
  }
}
