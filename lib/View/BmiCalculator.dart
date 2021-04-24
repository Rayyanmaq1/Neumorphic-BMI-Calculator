import 'package:bmicalculator/Widget/Button.dart';
import 'package:bmicalculator/Widget/EditButton.dart';
import 'package:bmicalculator/utils/SizedConfig.dart';
import 'package:bmicalculator/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BmiCalCulator extends StatefulWidget {
  @override
  _BmiCalCulatorState createState() => _BmiCalCulatorState();
}

class _BmiCalCulatorState extends State<BmiCalCulator> {
  bool heightSeleted = false;
  bool showResult = false;
  double result;
  String weight = '0';
  String height = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text(
          'BMI',
          style: GoogleFonts.getFont('Roboto',
              fontSize: SizeConfig.textMultiplier * 3, color: lightGreyColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 9,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            heightSeleted = !heightSeleted;
                          });
                        },
                        child: Container(
                          height: SizeConfig.heightMultiplier * 5.5,
                          width: SizeConfig.widthMultiplier * 27,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.stadium(),
                              depth: heightSeleted ? -3 : 4,
                              intensity: 2,
                            ),
                            child: Center(
                                child: Text(
                              'WEIGHT',
                              style: TextStyle(
                                  color: lightGreyColor,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            heightSeleted = !heightSeleted;
                          });
                        },
                        child: Container(
                          height: SizeConfig.heightMultiplier * 10,
                          width: SizeConfig.widthMultiplier * 25,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                weight == '0' ? '00.00' : weight,
                                style: GoogleFonts.getFont('Oswald',
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.textMultiplier * 3.5,
                                    color: heightSeleted
                                        ? lightGreyColor
                                        : orangeColor),
                              ),
                              Text(
                                'Kilogram',
                                style: GoogleFonts.getFont(
                                  'Hind',
                                  fontWeight: FontWeight.w500,
                                  color: lightGreyColor,
                                  fontSize: SizeConfig.textMultiplier * 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 9,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            heightSeleted = !heightSeleted;
                          });
                        },
                        child: Container(
                          height: SizeConfig.heightMultiplier * 5.5,
                          width: SizeConfig.widthMultiplier * 27,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.stadium(),
                              depth: heightSeleted ? 4 : -3,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  heightSeleted = !heightSeleted;
                                });
                              },
                              child: Center(
                                  child: Text(
                                'HEIGHT',
                                style: TextStyle(
                                    color: lightGreyColor,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            heightSeleted = !heightSeleted;
                          });
                        },
                        child: Container(
                          height: SizeConfig.heightMultiplier * 10,
                          width: SizeConfig.widthMultiplier * 25,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                height == '0' ? '00.00' : height,
                                style: GoogleFonts.getFont('Oswald',
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.textMultiplier * 3.5,
                                    color: heightSeleted
                                        ? orangeColor
                                        : lightGreyColor),
                              ),
                              Text(
                                'Inches',
                                style: GoogleFonts.getFont(
                                  'Hind',
                                  fontWeight: FontWeight.w500,
                                  color: lightGreyColor,
                                  fontSize: SizeConfig.textMultiplier * 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 2,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
          Neumorphic(
            child: Container(
              height: SizeConfig.heightMultiplier * 0.1,
              color: lightGreyColor,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: SizeConfig.heightMultiplier * 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: SizeConfig.heightMultiplier * 40,
                          width: SizeConfig.widthMultiplier * 77,
                          child: Center(child: _buildButton()),
                        ),
                        Container(
                          height: SizeConfig.heightMultiplier * 40,
                          width: SizeConfig.widthMultiplier * 20,
                          child: _buildEditingButton(),
                        ),
                      ],
                    ),
                    Container(),
                  ],
                ),
              ),
              _buildAnimatedContainer(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedContainer() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      color: whiteColor,
      padding: EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width,
      height: showResult ? SizeConfig.heightMultiplier * 53 : 0,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 30,
              width: SizeConfig.widthMultiplier * 90,
              child: Neumorphic(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              result.toString().substring(0, 4),
                              style: GoogleFonts.getFont(
                                'Quicksand',
                                fontWeight: FontWeight.bold,
                                color: orangeColor,
                                fontSize: SizeConfig.textMultiplier * 8,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BMI',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    letterSpacing: 3,
                                    color: lightGreyColor,
                                    fontSize: SizeConfig.textMultiplier * 4,
                                  ),
                                ),
                                Text(
                                  'Overweight',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: orangeColor,
                                    fontSize: SizeConfig.textMultiplier * 1.5,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Underweight',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: lightBlueColor,
                                  fontSize: SizeConfig.textMultiplier * 1.5,
                                ),
                              ),
                              Text(
                                'Normal',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Colors.green,
                                  fontSize: SizeConfig.textMultiplier * 1.5,
                                ),
                              ),
                              Text(
                                'Overweight',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: pinkColor,
                                  fontSize: SizeConfig.textMultiplier * 1.5,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: SizeConfig.heightMultiplier * 0.5,
                                decoration: BoxDecoration(
                                    color: lightBlueColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12))),
                                width: SizeConfig.widthMultiplier * 25,
                              ),
                              Container(
                                height: SizeConfig.heightMultiplier * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                ),
                                width: SizeConfig.widthMultiplier * 25,
                              ),
                              Container(
                                height: SizeConfig.heightMultiplier * 0.5,
                                decoration: BoxDecoration(
                                    color: pinkColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12))),
                                width: SizeConfig.widthMultiplier * 25,
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '16.0',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: lightGreyColor,
                                  fontSize: SizeConfig.textMultiplier * 1.5,
                                ),
                              ),
                              Text(
                                '18.5',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: lightGreyColor,
                                  fontSize: SizeConfig.textMultiplier * 1.5,
                                ),
                              ),
                              Text(
                                '25.0',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: lightGreyColor,
                                  fontSize: SizeConfig.textMultiplier * 1.5,
                                ),
                              ),
                              Text(
                                '40.0',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: lightGreyColor,
                                  fontSize: SizeConfig.textMultiplier * 1.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => setState(() {
                showResult = false;
              }),
              child: Container(
                height: SizeConfig.heightMultiplier * 9,
                width: SizeConfig.heightMultiplier * 9,
                child: Neumorphic(
                  style: NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
                  child: Center(
                    child: Text(
                      '<',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.bold,
                        color: orangeColor,
                        fontSize: SizeConfig.textMultiplier * 5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        height: 300,
        width: 300,
      ),
    );
  }

  Widget _buildButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttons(
              number: "7",
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "7"
                            : height += "7"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "7"
                            : weight += "7"
                        : null;
              }),
            ),
            Buttons(
              number: '8',
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "8"
                            : height += "8"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "8"
                            : weight += "8"
                        : null;
              }),
            ),
            Buttons(
              number: '9',
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "9"
                            : height += "9"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "9"
                            : weight += "9"
                        : null;
              }),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttons(
              number: "4",
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "4"
                            : height += "4"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "4"
                            : weight += "4"
                        : null;
              }),
            ),
            Buttons(
              number: '5',
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "5"
                            : height += "5"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "5"
                            : weight += "5"
                        : null;
              }),
            ),
            Buttons(
              number: '6',
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "6"
                            : height += "6"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "6"
                            : weight += "6"
                        : null;
              }),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttons(
              number: "1",
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "1"
                            : height += "1"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "1"
                            : weight += "1"
                        : null;
              }),
            ),
            Buttons(
              number: '2',
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "2"
                            : height += "2"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "2"
                            : weight += "2"
                        : null;
              }),
            ),
            Buttons(
              number: '3',
              ontap: () => setState(() {
                heightSeleted
                    ? height.length < 5
                        ? height == '0'
                            ? height = "3"
                            : height += "3"
                        : null
                    : weight.length < 5
                        ? weight == "0"
                            ? weight = "3"
                            : weight += "3"
                        : null;
              }),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: SizeConfig.heightMultiplier * 10,
              height: SizeConfig.heightMultiplier * 8,
              decoration: BoxDecoration(shape: BoxShape.circle),
            ),
            Buttons(
              number: '0',
              ontap: () => setState(() {
                heightSeleted
                    ? height == "00.00"
                        ? height = "0"
                        : height += "0"
                    : weight == "00.00"
                        ? weight = "0"
                        : weight += "0";
              }),
            ),
            Buttons(
              number: '.',
              ontap: () => setState(() {
                heightSeleted
                    ? height == "00.00"
                        ? height = "."
                        : height += "."
                    : weight == "00.00"
                        ? weight = "."
                        : weight += ".";
              }),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEditingButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        EditingButon(
          editButton: "AC",
          ontap: () => setState(() {
            height = '0';
            weight = '0';
          }),
        ),
        EditingButon(
          ontap: () => setState(() {
            heightSeleted
                ? height = height.substring(0, height.length - 1)
                : weight = weight.substring(0, weight.length - 1);
            if (height.length == 0) {
              height = '0';
            }
            if (weight.length == 0) {
              weight = '0';
            }
          }),
          editButton: '<-',
        ),
        EditingButon(
          editButton: 'GO',
          ontap: () {
            if (weight != '0' && height != '0') {
              setState(() {
                showResult = true;
                result = 703 *
                    (double.parse(weight) * 2.2) /
                    (double.parse(height) * double.parse(height));
              });
            }
          },
        ),
      ],
    );
  }
}
