import 'package:bmicalculator/utils/SizedConfig.dart';
import 'package:bmicalculator/utils/theme.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  Buttons({this.number, this.ontap});
  String number;
  Function ontap;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 6,
        intensity: 0.7,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: RawMaterialButton(
        onPressed: ontap,
        child: Container(
            height: SizeConfig.heightMultiplier * 8,
            width: SizeConfig.heightMultiplier * 8,
            child: Center(
                child: Text(
              number,
              style: GoogleFonts.getFont(
                'Barlow Condensed',
                fontWeight: FontWeight.bold,
                color: greyColor,
                fontSize: SizeConfig.textMultiplier * 3,
              ),
            ))),
      ),
    );
  }
}
