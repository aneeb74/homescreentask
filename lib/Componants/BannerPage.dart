import 'package:flutter/material.dart';
import 'package:homescreentask/Componants/Model.dart';
import 'package:homescreentask/Constant.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 180,
      child: PageView.builder(
        itemCount: myImage.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Column(
                children: [
                  myImage[index],

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
                  'Fruits',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Positioned(
                top: 30,
                left: 187,
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
    );
  }
}
