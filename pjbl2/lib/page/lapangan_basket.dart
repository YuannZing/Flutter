import 'package:flutter/material.dart';
import 'package:pjbl2/constans.dart';

class basket extends StatefulWidget {
  const basket({Key? key}) : super(key: key);

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
          style: OpenSanstextstyle.copyWith(fontSize: 15, fontWeight: bold),
        ),
      ),
      //End Appbar

      body: Column(
        children: [
          // //Start Search
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(25, 25, 25, 15),
          //   child: TextField(
          //     onChanged: (value) => filterList(value),
          //     decoration: InputDecoration(
          //       labelText: 'Search',
          //       hintText: 'Search...',
          //       prefixIcon: Icon(Icons.search),
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // //End Seacrh

          //Start List Lapangan
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 310,
                  height: 110,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            Offset(0, 5), // Pergeseran bayangan pada sumbu Y
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 95,
                            width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  10), // Menambahkan border radius
                              image: DecorationImage(
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
                                padding: EdgeInsets.only(left: 110, top: 5),
                                child: Text(
                                  'Lapangan Jaya',
                                  style: Robototextstyle.copyWith(
                                      fontSize: 12, fontWeight: bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 110, top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      MyFlutterApp.sort,
                                      size: 15,
                                      color: Colors.orange,
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
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 110, top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      MyFlutterApp.jam,
                                      size: 15,
                                      color: Colors.orange,
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //End List Lapangan
        ],
      ),
    );
  }
}
