import 'package:flutter/material.dart';
import 'package:flutter_responsive_1/main.dart';
import 'package:flutter_responsive_1/screen/home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TickedDetails extends StatefulWidget {
  const TickedDetails({Key key}) : super(key: key);

  @override
  _TickedDetailsState createState() => _TickedDetailsState();
}

class _TickedDetailsState extends State<TickedDetails> {
  @override
  Widget build(BuildContext context) {
    final myAppbar = AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    );
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final bodyHeght = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        myAppbar.preferredSize.height;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: bodyHeght * .45,
          width: mediaQueryWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/clock_tower.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage())),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          child: Container(
            height: bodyHeght * .80,
            width: mediaQueryWidth,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: SingleChildScrollView(
                          child: Column(
                children: [
                  SizedBox(
                    height: bodyHeght * 0.030,
                  ),
                  Container(
                    height: 62,
                    width: mediaQueryWidth * 0.70,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red[300],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Avian",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Train",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Car",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: bodyHeght * 0.040,
                  ),
                  Center(
                    child: Text(
                      '2 tickets',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeght * 0.035,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          height: bodyHeght * 0.25,
                          width: mediaQueryWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                Row(children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/icon/dot.svg',
                                    height: 10,
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: new Container(
                                        margin: const EdgeInsets.only(
                                            left: 10.0, right: 15.0),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 50,
                                        )),
                                  ),
                                  SvgPicture.asset(
                                    'assets/icon/flight.svg',
                                    height: 25,
                                    width: 10,
                                    color: Colors.red,
                                  ),
                                  Expanded(
                                    child: new Container(
                                        margin: const EdgeInsets.only(
                                            left: 15.0, right: 10.0),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 50,
                                        )),
                                  ),
                                  SvgPicture.asset(
                                    'assets/icon/dot.svg',
                                    height: 10,
                                    width: 10,
                                    color: Colors.black,
                                  ),
                                ]),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "New Yok",
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey.withOpacity(1.0),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          "12h",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Great Britain",
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey.withOpacity(1.0),
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "10:40am",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "12:40am",
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "4.26.2021, Tue",
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey.withOpacity(1.0),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "4.27.2021, Wed",
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey.withOpacity(1.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 20,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: bodyHeght * 0.10,
                          width: mediaQueryWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icon/flight.svg',

                                  height: 25,
                                  width: 10,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 15,),
                                Expanded(flex: 4,child: Text("American Arlines")),
                                Expanded(
                                  flex: 1,
                                    child: Text(
                                  "\$120",
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          height: bodyHeght * 0.25,
                          width: mediaQueryWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                Row(children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/icon/dot.svg',
                                    height: 10,
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: new Container(
                                        margin: const EdgeInsets.only(
                                            left: 10.0, right: 15.0),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 50,
                                        )),
                                  ),
                                  SvgPicture.asset(
                                    'assets/icon/flight.svg',
                                    height: 25,
                                    width: 10,
                                    color: Colors.red,
                                  ),
                                  Expanded(
                                    child: new Container(
                                        margin: const EdgeInsets.only(
                                            left: 15.0, right: 10.0),
                                        child: Divider(
                                          color: Colors.black,
                                          height: 50,
                                        )),
                                  ),
                                  SvgPicture.asset(
                                    'assets/icon/dot.svg',
                                    height: 10,
                                    width: 10,
                                    color: Colors.black,
                                  ),
                                ]),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "New Yok",
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey.withOpacity(1.0),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          "12h",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Great Britain",
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey.withOpacity(1.0),
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "10:40am",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "12:40am",
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "4.26.2021, Tue",
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey.withOpacity(1.0),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "4.27.2021, Wed",
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey.withOpacity(1.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 20,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: bodyHeght * 0.10,
                          width: mediaQueryWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icon/flight.svg',

                                  height: 25,
                                  width: 10,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 15,),
                                Expanded(flex: 4,child: Text("American Arlines")),
                                Expanded(
                                  flex: 1,
                                    child: Text(
                                  "\$120",
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 100,),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
