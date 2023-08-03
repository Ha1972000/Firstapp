import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          'My shopping',
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              color: Color(0xFFF804A3),
              fontSize: 25,
            ),
          ),
        ),
        leading: new IconButton(
          icon: new Icon(
            Icons.navigate_before,
            size: 40,
            color: Color(0xFFF804A3),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
                child: Lottie.asset('assets/shopping.json',
                    width: 200, height: 200)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 200,
              height: 40,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFEF66C0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(
                              title: '',
                            )),
                  );
                },
                child: Text(
                  'Go shopping!',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
