// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:firstapp/view/cat.dart';
import 'package:firstapp/view/dog.dart';
import 'package:firstapp/view/foods.dart';
import 'package:firstapp/view/list.dart';
import 'package:firstapp/view/mouse.dart';
import 'package:firstapp/view/price.dart';
import 'package:firstapp/view/setting.dart';
import 'package:firstapp/view/splash.dart';
import 'package:firstapp/view/vay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFADEF0),
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(80.0),
                      child: const Image(
                        image: AssetImage(
                          "assets/img.png",
                        ),
                        width: 60.0,
                        height: 60.0,
                      ), // Padding(
                      //   padding: const EdgeInsets.only(to),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  IconButton(
                    onPressed: () {
                      // showSearch(
                      //     context: context, delegate: customSearch());
                    },
                    icon: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mouse()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(right: 230),
                        child: Icon(
                          CupertinoIcons.cart,
                          size: 30,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                  // ),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.only( top:0,left: 10, right: 10),
            child: SizedBox(
                height: 200.0,
                child: Carousel(
                  images: [
                    NetworkImage(
                        'https://megatop.vn/wp-content/uploads/2019/09/shop-meo-da-nang-0.jpg'),
                    NetworkImage(
                        'https://inhat.vn/ha-noi/wp-content/uploads/2019/10/ch%C3%BA-gi%C3%B3ng-min.jpg'),
                    NetworkImage(
                        'https://i0.wp.com/thatnhucuocsong.com.vn/wp-content/uploads/2022/02/Anh-meo-cute.jpg?ssl=1'),
                    ExactAssetImage("assets/food1.png")
                  ],
                  showIndicator: true,
                  borderRadius: true,
                  radius: Radius.circular(15),
                  moveIndicatorFromBottom: 1.0,
                  indicatorBgPadding: 1.5,
                  // noRadiusForIndicator: true,
                  overlayShadow: false,
                  overlayShadowColors: Colors.red,
                  // overlayShadowSize: 1,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFF804A3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        " Cuộc sống nhỏ bé ngắn ngủi như vậy mà thú cưng của chúng ta phải trải qua với chúng ta, và chúng dành phần lớn thời gian để chờ chúng ta về nhà mỗi ngày!",
                        style: GoogleFonts.lobster(
                          textStyle: const TextStyle(
                            wordSpacing: 4,
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  "Thú cưng của bạn ",
                  style: GoogleFonts.lobster(
                    textStyle: const TextStyle(
                      color: Color(0xFFF804A3),
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Container(
                height: 125,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                              width: 90.0,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.lightBlue, width: 3),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/mèo.png",
                                    ),
                                  ))), // Padding(
                          //   padding: const EdgeInsets.only(to),

                          Text(
                            textAlign: TextAlign.end,
                            'Mèo',
                            style: GoogleFonts.lobster(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                              width: 90.0,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.orangeAccent, width: 3),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/dog.png",
                                    ),
                                  ))),
                          Text(
                            textAlign: TextAlign.end,
                            'Chó',
                            style: GoogleFonts.lobster(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                              width: 90.0,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/ic_add_pet.png",
                                    ),
                                  ))),
                          Text(
                            textAlign: TextAlign.end,
                            'Thêm thú cưng của bạn',
                            style: GoogleFonts.lobster(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 235, bottom: 5),
                child: Text(
                  "Siêu thị thú cưng",
                  style: GoogleFonts.lobster(
                    textStyle: const TextStyle(
                      color: Color(0xFFF804A3),
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                // decoration:
                //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ListView(scrollDirection: Axis.horizontal, children: <
                    Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Cat()),
                            );
                          },
                          child: Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.orangeAccent, width: 1),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/pet.png",
                                    ),
                                  ))),
                        ), // Padding(
                        //   padding: const EdgeInsets.only(to),

                        Text(
                          textAlign: TextAlign.end,
                          'Pets',
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Foods()),
                            );
                          },
                          child: Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.orangeAccent, width: 1),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/food.png",
                                    ),
                                  ))),
                        ), // P
                        Text(
                          textAlign: TextAlign.end,
                          'Đồ ăn',
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.orangeAccent, width: 1),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/clothing.png",
                                  ),
                                ))),
                        Text(
                          textAlign: TextAlign.end,
                          'Pet Clothing',
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.orangeAccent, width: 1),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/phukien.png",
                                  ),
                                ))),
                        Text(
                          textAlign: TextAlign.end,
                          'Đồ dùng,phụ kiện',
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // Padding(
                  Container(
                    // decoration:
                    //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: 125,
                    width: double.infinity,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Foods()),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  child: const Image(
                                    image: AssetImage(
                                      "assets/pethouse.png",
                                    ),
                                    width: 90.0,
                                    height: 90.0,
                                  ), // Padding(
                                  //   padding: const EdgeInsets.only(to),
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.end,
                                'Foods Kid',
                                style: GoogleFonts.lobster(
                                  textStyle: TextStyle(
                                    color: Colors.black54,
                                    // fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  child: const Image(
                                    image: AssetImage(
                                      "assets/hat.png",
                                    ),
                                    width: 90.0,
                                    height: 90.0,
                                  ), // Padding(
                                  //   padding: const EdgeInsets.only(to),
                                ),
                                Text(
                                  textAlign: TextAlign.end,
                                  'Foods',
                                  style: GoogleFonts.lobster(
                                    textStyle: TextStyle(
                                      color: Colors.black54,
                                      // fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text(
                  "Pet Clothing",
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                      color: Color(0xFFF804A3),
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                // decoration:
                //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ListView(scrollDirection: Axis.horizontal, children: <
                    Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Cat()),
                            );
                          },
                          child: Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.orangeAccent, width: 1),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/img_21.png",
                                    ),
                                  ))),
                        ), // Padding(
                        //   padding: const EdgeInsets.only(to),

                        Text(
                          textAlign: TextAlign.end,
                          'Pets',
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Foods()),
                            );
                          },
                          child: Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.orangeAccent, width: 1),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/img_23.png",
                                    ),
                                  ))),
                        ), // P
                        Text(
                          textAlign: TextAlign.end,
                          'Đồ ăn',
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.orangeAccent, width: 1),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/vaydep.png",
                                  ),
                                ))),
                        Text(
                          textAlign: TextAlign.end,
                          'Pet Clothing',
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.orangeAccent, width: 1),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/img_21.png",
                                  ),
                                ))),
                        Text(
                          textAlign: TextAlign.end,
                          'Đồ dùng,phụ kiện',
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // Padding(
                  Container(
                    // decoration:
                    //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: 125,
                    width: double.infinity,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Foods()),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  child: const Image(
                                    image: AssetImage(
                                      "assets/images/pethouse.png",
                                    ),
                                    width: 90.0,
                                    height: 90.0,
                                  ), // Padding(
                                  //   padding: const EdgeInsets.only(to),
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.end,
                                'Foods Kid',
                                style: GoogleFonts.lobster(
                                  textStyle: TextStyle(
                                    color: Colors.black54,
                                    // fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  child: const Image(
                                    image: AssetImage(
                                      "assets/hat.png",
                                    ),
                                    width: 90.0,
                                    height: 90.0,
                                  ), // Padding(
                                  //   padding: const EdgeInsets.only(to),
                                ),
                                Text(
                                  textAlign: TextAlign.end,
                                  'Foods',
                                  style: GoogleFonts.lobster(
                                    textStyle: TextStyle(
                                      color: Colors.black54,
                                      // fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: new BorderRadius.circular(50.0),
                                child: const Image(
                                  image: AssetImage(
                                    "assets/sua.png",
                                  ),
                                  width: 90.0,
                                  height: 90.0,
                                ), // Padding(
                                //   padding: const EdgeInsets.only(to),
                              ),
                              Text(
                                textAlign: TextAlign.end,
                                'Milk',
                                style: GoogleFonts.lobster(
                                  textStyle: TextStyle(
                                    color: Colors.black54,
                                    // fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              )
            ]),
          ),
        ])),
        bottomNavigationBar: Container(
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFF804A3),
                    offset: Offset(0.5, 0.5),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage(
                                  title: '',
                                )),
                      );
                    },
                    child: Icon(
                      Icons.home_rounded,
                      color: CupertinoColors.inactiveGray,
                      size: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LV()),
                      );
                    },
                    child: Icon(
                      Icons.list_alt,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Price()),
                        );
                      };
                    },
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Setting()),
                      );
                    },
                    child: Icon(
                      Icons.person,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                ])));
  }
}
