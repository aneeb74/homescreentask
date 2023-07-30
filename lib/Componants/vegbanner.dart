import 'package:flutter/material.dart';
import 'package:homescreentask/Componants/Model.dart';
import 'package:homescreentask/Constant.dart';
class vegbanner extends StatelessWidget {
  const vegbanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 300,
       // height: MediaQuery.of(context).size.height,
        //width: MediaQuery.of(context).size.width,
        child: PageView.builder(
          itemCount: vegImage.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Column(
                  children: [
                    vegImage[index],

                  ],
                ),
                Positioned(
                  top: 45,
                  left: 45,
                  child: Text(
                    'Fresh & Healthy',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 40,
                  child: Text(
                    'VEGETABLES',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Positioned(
                  top: 23,
                  left: 250,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: PColor,
                    child: Text('50% \n OFF'),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: PColor),
                      onPressed: () {},
                      child: Text('Shop Now')),
                ),
              ],
            );
          },
        ),

      ),
    );
  }
}
