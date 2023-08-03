import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Mouse extends StatelessWidget {
  const Mouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final provider = FavoriteProvider.of(context);
    final List<String> images = <String>[
      "assets/chuot2.png",
      "assets/chuot3.png",
      "assets/chuot4.png",
      "assets/chuot5.png",
      "assets/chuot6.png",
      "assets/img_13.png",
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
          toolbarHeight: 30,
          backgroundColor: Color(0xFFF804A3),

          title: Row(
            children: [
              const Text('Mouse',),
              Padding(
                padding: const EdgeInsets.only(left: 130 ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.cart,size: 30,
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
                      height: 45,
                      child: TextField(
                        style: TextStyle(color: Colors.green),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(width: 1, color: Colors.pinkAccent),
                          ),
                          hintText: 'Search..',
                          hintStyle: TextStyle(
                            color:
                                Colors.pinkAccent, // set your desired color here
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
                    mainAxisExtent: 229,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:  Color(0xFFFFCBEB),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            images[index],
                            width: double.infinity,
                            fit: BoxFit.cover,
                            height: 160,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Column(
                            children: [
                              Text(
                                text[index],
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'Arial',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // provider.toggleFavorite(images[index]);
                                      // if (provider.images
                                      //     .contains(images[index])) {
                                      //   DefaultTabController.of(context)
                                      //       ?.animateTo(2);
                                      // }
                                    },
                                    icon: const Icon(Icons.favorite_border),
                                    // icon: provider.isExist(images[index])
                                    //     ? const Icon(Icons.favorite,
                                    //         color: Colors.red)
                                    //     : const Icon(
                                    //         Icons.favorite_border,
                                    //         color: Colors.white,
                                    //       ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        CupertinoIcons.cart,
                                        color: Colors.white,
                                      )),
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
