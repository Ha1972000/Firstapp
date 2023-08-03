import 'package:firstapp/view/login.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFADEF0),
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(30.0),
                      child: const Image(
                        image: AssetImage(
                          "assets/food1.png",
                        ),
                        width: 50.0,
                        height: 50.0,
                      ), // Padding(
                      //   padding: const EdgeInsets.only(to),
                    ),
                  ),
                ),
                Text(
                  "MiuMiu",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.ad_units_rounded,
                        size: 20, color: Colors.pinkAccent),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Giao diện và ngôn ngữ",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            child: Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite,
                        size: 20, color: Colors.pinkAccent),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Favorite",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.access_time,
                        size: 20, color: Colors.pinkAccent),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nhật ký",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.info_outline,
                        size: 20, color: Colors.pinkAccent),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Thông tin về Catsapp",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.support_agent,
                        size: 20, color: Colors.pinkAccent),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hỗ trợ",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            child: Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Icon(Icons.person_search,
                        size: 20, color: Colors.pinkAccent),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Chuyển tài khoản",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 25, bottom: 2, left: 10, right: 10),
            child: Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xFFF804A3),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        Icon(
                          Icons.outbond_outlined,
                          color: Colors.white,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            "Đăng xuất",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))),
            ),
          ),
        ],
      )),
    );
  }
}
