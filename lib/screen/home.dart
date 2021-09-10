import 'package:flutter/material.dart';
import 'package:flutter_responsive_1/screen/ticket_details.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: mediaQueryHeight * 0.070,
            ),
            Container(
              height: mediaQueryHeight * 0.15,
              width: mediaQueryWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Where would \n You like to travel?",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                      icon: SvgPicture.asset('assets/icon/user.svg'),
                      onPressed: () {})
                  // IconButton(
                  //     icon: Icon(
                  //       Icons.person,
                  //       color: Colors.blue,
                  //       size: 50,
                  //     ),
                  //     onPressed: () {},),
                ],
              ),
            ),
            Container(
              height: mediaQueryHeight * 0.1,
              width: mediaQueryWidth,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search..',
                    filled: true,
                    fillColor: Colors.grey[100],
                    suffixIcon: Icon(Icons.apps),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(
                      backgroundColor: Colors.grey[200],
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    )),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: mediaQueryHeight * 0.1,
                width: mediaQueryWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonTheme(
                      minWidth: mediaQueryWidth * 0.2,
                      height: mediaQueryHeight * 0.050,
                      child: BottomCategory(
                        name: 'All',
                        color: Colors.grey[200],
                        textColor: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: mediaQueryWidth * 0.020,
                    ),
                    ButtonTheme(
                      minWidth: mediaQueryWidth * 0.2,
                      height: mediaQueryHeight * 0.050,
                      child: BottomCategory(
                          name: 'Flight',
                          color: Colors.red[200],
                          textColor: Colors.white),
                    ),
                    SizedBox(
                      width: mediaQueryWidth * 0.020,
                    ),
                    ButtonTheme(
                      minWidth: mediaQueryWidth * 0.2,
                      height: mediaQueryHeight * 0.050,
                      child: BottomCategory(
                          name: 'Cruise',
                          color: Colors.grey[200],
                          textColor: Colors.black54),
                    ),
                    SizedBox(
                      width: mediaQueryWidth * 0.020,
                    ),
                    ButtonTheme(
                      minWidth: mediaQueryWidth * 0.2,
                      height: mediaQueryHeight * 0.050,
                      child: BottomCategory(
                          name: 'Train',
                          color: Colors.grey[200],
                          textColor: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                height: mediaQueryHeight,
                width: mediaQueryWidth,
                
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    // crossAxisSpacing: 1,
       
                  ),
                  itemBuilder: (context, index) => FlatButton(
                    
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TickedDetails())),
                    child: Container(
                        width: mediaQueryWidth ,
                        height: mediaQueryHeight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/plane_background.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Paris",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                    
                              ButtonTheme(
                                minWidth: mediaQueryWidth * 0.1,
                                height: mediaQueryHeight * 0.050,
                                child: BottomCategory(
                                    name: '\$120',
                                    color: Colors.grey[200],
                                    textColor: Colors.black54),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}

class BottomCategory extends StatelessWidget {
  const BottomCategory({Key key, this.color, this.name, this.textColor})
      : super(key: key);

  final String name;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 0,
      onPressed: () {},
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        name,
        style: GoogleFonts.poppins(
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
