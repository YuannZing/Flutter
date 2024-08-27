import 'package:flutter/material.dart';
import 'package:pjbl3/constans.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pjbl3/page/deskripsi_lapangan.dart';
import 'package:pjbl3/page/pilih_waktu.dart';
import 'package:pjbl3/page/rate_lapangan.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  _detailstate createState() => _detailstate();
}

class _detailstate extends State<detail> with SingleTickerProviderStateMixin {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> myData = [
    Container(
      padding: const EdgeInsets.all(30),
      width: 310,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/foto_basket_L/gambar_1.png"),
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(30),
      width: 310,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/foto_basket_L/gambar_1.png"),
        ),
      ),
    ),
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Lapangan Jaya',
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
      body: Column(
        children: [
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
                    aspectRatio: 3.1 / 1.5,
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
                      margin:
                          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // END Carousel Slider Card

          //Start Harga
          Padding(
            padding: const EdgeInsets.only(
              left: 0,
              bottom: 10,
            ), // Atur padding di sini
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rp.50.000',
                  style: Robototextstyle.copyWith(
                      fontSize: 14, fontWeight: black, color: Primarycolor),
                ),
                Text(
                  ' / jam',
                  style: Robototextstyle.copyWith(
                      fontSize: 14, fontWeight: SemiBold, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey, // Warna garis
            thickness: 2, // Ketebalan garis
          ),
          //End Harga

          //Start TabBar
          Container(
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: _tabController,
              indicatorColor: Colors.black,
              tabs: const [
                Tab(
                  text: "Deskripsi",
                ),
                Tab(
                  text: "Rating",
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Deskripsi(),
                  rate(),
                ],
              ),
            ),
          ),
          //End TabBar
        ],
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
                  MaterialPageRoute(builder: (context) => const Pilih_Waktu()),
                );
              },
              splashColor: Primarycolor,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Sewa Lapangan',
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
