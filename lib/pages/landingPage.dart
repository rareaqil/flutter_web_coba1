import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landingPage extends StatefulWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //Activ nav
    Widget navItem({String? title, int? index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index!;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title!,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xff1D1E3C),
                    fontWeight: index == selectedIndex
                        ? FontWeight.w500
                        : FontWeight.w300)),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: index == selectedIndex
                      ? Color(0xffFE998D)
                      : Colors.transparent),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Coba Flutter 1"),
      ),
      body: Stack(
        children: [
          Image.asset(
            'bg.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                // NOTE: NAVIGATION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        navItem(title: 'Rare', index: 0),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(title: 'Aqil', index: 1),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(title: 'Aflahudin', index: 2),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(title: 'Jenar', index: 3),
                      ],
                    ),
                    Image.asset(
                      'btn.png',
                      width: 163,
                      height: 53,
                    )
                  ],
                ),

                //NOTE: CONTENT
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'ilustrasi.png',
                  width: 550,
                ),

                //NOTE: FOOTER
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'down.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text('Follow Instagram',
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.pink)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
