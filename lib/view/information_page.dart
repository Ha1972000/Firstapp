// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controller/information_controller.dart';
// import '../resource/strings.dart';
// import '../resource/widgets/common_widgets.dart';
// class InformationPage extends StatefulWidget {
//   @override
//   _InformationPageState createState() => _InformationPageState();
// }
//
// class _InformationPageState extends State<InformationPage> {
//   @override
//   Widget build(BuildContext context) {
//     final InformationController informationController = Get.put(InformationController());
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(INFORMATION_INPUT),
//           centerTitle: true,
//         ),
//         body: Container(
//           padding: EdgeInsets.all(10) ,
//           child: Column(
//             children: [
//
//               informationWidget(label: NAME, content: informationController.name.value),
//               Divider(),
//               informationWidget(label: ZALO, content: informationController.zalo.value),
//               Divider(),
//               informationWidget(label: WEBSITE, content: informationController.website.value),
//               Divider(),
//               informationWidget(label: DESCRIPTION, content: informationController.description.value),
//               Divider(),
//
//             ],
//           ),
//
//         )
//
//     );
//   }
// }
