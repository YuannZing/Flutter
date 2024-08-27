import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color backgroundcolor = const Color.fromRGBO(240, 240, 240, 1);
Color F6FFFE = const Color.fromRGBO(246, 255, 254, 1);
Color dropbackground = const Color.fromRGBO(255, 255, 255, 0.5);
Color Primarycolor = const Color.fromRGBO(55, 153, 146, 1);
Color darkPrimarycolor = const Color.fromRGBO(32, 140, 133, 1);

TextStyle oswaldtextstyle = GoogleFonts.oswald();
TextStyle OpenSanstextstyle = GoogleFonts.openSans();
TextStyle Robototextstyle = GoogleFonts.roboto();

FontWeight Extra_Light = FontWeight.w200;
FontWeight Light = FontWeight.w300;
FontWeight Reguler = FontWeight.w400;
FontWeight Medium = FontWeight.w500;
FontWeight SemiBold = FontWeight.w600;
FontWeight bold = FontWeight.bold;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData lapangan_svg =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData profile_svg =
      IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
