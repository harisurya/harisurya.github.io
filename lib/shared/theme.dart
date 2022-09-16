part of 'shared.dart';

const double defaultMargin = 10;

Color mainColor = const Color(0xFF308868);
Color accentColor1 = const Color(0xFFF9DC29);
Color accentColor2 = const Color(0xFF3C40C6);
Color greyColor = const Color(0xFFE4E4E4);

TextStyle blackTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle whiteTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle yellowTextFont = GoogleFonts.raleway()
    .copyWith(color: mainColor, fontWeight: FontWeight.w500);
TextStyle purpleTextFont = GoogleFonts.raleway()
    .copyWith(color: accentColor2, fontWeight: FontWeight.w500);
TextStyle greyTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.grey, fontWeight: FontWeight.w500);

TextStyle whiteNumberFont =
    GoogleFonts.openSans().copyWith(color: Colors.white);
TextStyle yellowNumberFont = GoogleFonts.openSans().copyWith(color: mainColor);
TextStyle blackNumberFont =
    GoogleFonts.openSans().copyWith(color: Colors.black);
TextStyle greyNumberFont =
    GoogleFonts.openSans().copyWith(color: Colors.black54);

const double defaultIconSize = 32.0;
