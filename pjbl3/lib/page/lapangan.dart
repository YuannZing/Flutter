import 'package:flutter/material.dart';
import 'package:pjbl3/constans.dart';
import 'package:pjbl3/page/Riwayat.dart';

class Lapangan extends StatefulWidget {
  const Lapangan({super.key});

  @override
  _LapanganState createState() => _LapanganState();
}

class _LapanganState extends State<Lapangan>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lapangan',
          style: Robototextstyle.copyWith(fontWeight: SemiBold),
        ),
        bottom: TabBar(
          // Menambahkan tab bar di bagian bawah app bar
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          indicatorColor: Colors.black,
          tabs: const [
            Tab(
              text: "Riwayat",
            ),
            Tab(
              text: "Berlangsung",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          riwayat(),
          Text("Kosong"),
        ],
      ),
    );
  }
}
