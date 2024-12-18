import 'package:flutter/cupertino.dart';

class CutomBunner  extends StatelessWidget {
  const CutomBunner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
    // borderRadius: BorderRadius.circular(),
      child: Image.asset("assets/images/baner.jpg",
        height: MediaQuery.of(context).size.height*0.21,
        //  width: MediaQuery.of(context).size.width*0.25,
        fit: BoxFit.fill,
      ),
    );;
  }
}
