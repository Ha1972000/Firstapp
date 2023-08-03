import 'package:firstapp/view/price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Foods extends StatelessWidget {
  const Foods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final provider = FavoriteProvider.of(context);
    final List<String> images = <String>[
      "assets/food1.png",
      "assets/cat5.png",
      "assets/cat4.png",
      "assets/cat5.png",
      "assets/cat6.png",
      "assets/img_7.png",
    ];
    final List<String> text = <String>[
      "Mèo anh lông ngắn",
      "Mèo ta(5 tháng)",
      "Mèo pháp(1 năm)",
      "Phocsoc (7 tháng)",
      "Ngao(9 tháng)",
      "Dan(2 năm 3 tháng)",
    ];
    final List<String> price = <String>[
      "đ58,000",
      "đ58,000",
      "đ58,000",
      "đ58,000",
      "đ58,000",
      "đ58,000",
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFF5E0ED),
        appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Color(0xFFF804A3),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Foods',
                style: GoogleFonts.lobster(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: IconButton(
                    onPressed: () {},
                    icon: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Price()),
                        );
                      },
                      child: Icon(
                        CupertinoIcons.cart,
                        size: 30,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Kitten',
                  style: TextStyle(),
                ),
              ),
              Tab(
                child: Text('Big cat'),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: images.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                images[index],
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, right: 145),
                                  child: Text(
                                    text[index],
                                    style: GoogleFonts.lobster(
                                      textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20, top: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          price[index],
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          // provider.toggleFavorite(images[index]);
                                          // if(provider.images.contains(images[index])){
                                          //   DefaultTabController.of(context)?.animateTo(2);
                                          // }
                                        },
                                        icon: Padding(
                                          padding:
                                          const EdgeInsets.only(left: 100),
                                          child: const Icon(
                                            Icons.favorite_border,
                                            size: 17,
                                          ),
                                        ),
                                        // icon: provider.isExist(images[index])
                                        // ? const Icon(Icons.favorite,
                                        // color: Colors.red)
                                        // : const Icon(Icons.favorite_border),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 100),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              CupertinoIcons.cart,
                                              size: 17,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.all(5),
              child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  images[index],
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 145),
                                    child: Text(
                                      text[index],
                                      style: GoogleFonts.lobster(
                                        textStyle: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 20, top: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            price[index],
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            // provider.toggleFavorite(images[index]);
                                            // if(provider.images.contains(images[index])){
                                            //   DefaultTabController.of(context)?.animateTo(2);
                                            // }
                                          },
                                          icon: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 100),
                                            child: const Icon(
                                              Icons.favorite_border,
                                              size: 17,
                                            ),
                                          ),
                                          // icon: provider.isExist(images[index])
                                          // ? const Icon(Icons.favorite,
                                          // color: Colors.red)
                                          // : const Icon(Icons.favorite_border),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 100),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                CupertinoIcons.cart,
                                                size: 17,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            GridView.builder(
              // itemCount: provider.images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) {
                  // final List = provider.images[index];
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF8BBD0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          images[index],
                          width: double.infinity,
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
