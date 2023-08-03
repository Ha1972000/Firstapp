import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dog extends GetView {
  const Dog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final provider = FavoriteProvider.of(context);

    final List<String> images = <String>[
      "assets/dog2.png",
      "assets/dog3.png",
      "assets/dog4.png",
      "assets/dog5.png",
      "assets/dog6.png",
      "assets/dog7.png",
    ];
    final List<String> text = <String>[
      "Minidog",
      "Cutedog",
      "Bull",
      "Phocsoc",
      "Ngao",
      "Dan",
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFF5E0ED),
        appBar: AppBar(
          backgroundColor: Color(0xFFF804A3),
          toolbarHeight: 30,
          title: Row(
            children: [
              Text(
                'Dog',
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
                    icon: Icon(
                      CupertinoIcons.cart,
                      size: 30,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.search,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.list,
                ),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 5,
                    ),
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        style: TextStyle(color: Colors.green),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              width: 1,
                            ),
                          ),
                          hintText: 'Search..',
                          hintStyle: TextStyle(
                            color: Colors
                                .pinkAccent, // set your desired color here
                          ),
                          focusColor: Colors.pinkAccent,
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Colors.pinkAccent,
                          suffixIcon: const Icon(Icons.mic),
                          suffixIconColor: Colors.pinkAccent,
                        ),
                      ),
                    )),
              ),
            ),
            GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 230,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF8BBD0),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            images[index],
                            width: double.infinity,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Text(
                                text[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // provider.toggleFavorite(images[index]);
                                      // if(provider.images.contains(images[index])){
                                      //   DefaultTabController.of(context)?.animateTo(2);
                                      // }
                                    },
                                    icon: const Icon(Icons.favorite_border),
                                    // icon: provider.isExist(images[index])
                                    //     ? const Icon(Icons.favorite,
                                    //         color: Colors.red)
                                    //     : const Icon(Icons.favorite_border),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(CupertinoIcons.cart)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            GridView.builder(
                // itemCount: provider.images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 230,
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
