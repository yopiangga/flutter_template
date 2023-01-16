part of 'shared.dart';

const double defaultMargin = 20;

Color mainColor = const Color(0xff21298a);
List<Color> accentColor = [
  Color(0xFFFBA00D),
  Color(0xFF181C32),
  Color(0xFF3F5254),
  Color(0xFFB5B5C3),
  Color(0xFFF5F8FA)
];

TextStyle mainTextFont = GoogleFonts.roboto()
    .copyWith(color: mainColor, fontWeight: FontWeight.w400);
TextStyle darkTextFont = GoogleFonts.roboto()
    .copyWith(color: accentColor[1], fontWeight: FontWeight.w400);
TextStyle grayTextFont = GoogleFonts.roboto()
    .copyWith(color: Colors.grey[700], fontWeight: FontWeight.w400);
TextStyle whiteTextFont = GoogleFonts.roboto()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w400);
