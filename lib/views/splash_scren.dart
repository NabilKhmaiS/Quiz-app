




























// import 'package:flutter/material.dart';
// import 'package:notes/cor/cutom_bunner.dart';
//
// class SplashScren extends StatelessWidget {
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green[100],
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text('MUSLIM PLUS', style: TextStyle(fontWeight: FontWeight.bold)),
//         centerTitle: true,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.all(16.0),
//           // padding: EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: CutomBunner()
//           ),
//           Expanded(
//             child: GridView.count(
//               crossAxisCount: 2,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//               padding: EdgeInsets.all(16.0),
//               children: [
//                 _buildGridItem('assets/images/3d.png', 'اتجاه القبلة'),
//                 _buildGridItem('assets/images/3d.png', 'مواقيت الصلاة'),
//                 _buildGridItem('assets/images/3d.png', 'أدعية'),
//                 _buildGridItem('assets/images/3d.png', 'أدعية'),
//                 _buildGridItem('assets/images/3d.png', 'التسبيح'),
//                 _buildGridItem('assets/images/3d.png', 'أحاديث'),
//                 _buildGridItem('assets/images/3d.png', 'السيرة النبوية'),
//                 _buildGridItem('assets/images/3d.png', 'خلفيات إسلامية'),
//                 _buildGridItem('assets/images/3d.png', 'أناشيد إسلامية'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildGridItem(String imagePath, String title) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.green[400],
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             imagePath,
//             width: 50,
//             height: 50,
//           ),
//           SizedBox(height: 10),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }