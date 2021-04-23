// ignore: must_be_immutable
import 'package:bmicalculator/utils/SizedConfig.dart';
import 'package:bmicalculator/utils/theme.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class EditingButon extends StatelessWidget {
  Function ontap;
  String editButton;
  EditingButon({this.ontap, this.editButton});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: SizeConfig.heightMultiplier * 12,
        width: SizeConfig.heightMultiplier * 8,
        child: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(30))),
          child: Center(
              child: editButton == '<-'
                  ? Icon(Icons.arrow_back,
                      color: orangeColor, size: SizeConfig.textMultiplier * 3)
                  : Text(
                      editButton,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.bold,
                        color: orangeColor,
                        fontSize: SizeConfig.textMultiplier * 3,
                      ),
                    )),
        ),
      ),
    );
  }
}
