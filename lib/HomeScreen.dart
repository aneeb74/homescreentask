import 'package:flutter/material.dart';
import 'package:homescreentask/Componants/BannerPage.dart';
import 'package:homescreentask/Componants/BottomBar.dart';
import 'package:homescreentask/Componants/Gridveiw.dart';
import 'package:homescreentask/Componants/SearchBar.dart';
import 'package:homescreentask/Componants/products.dart';
import 'package:homescreentask/Componants/vegbanner.dart';
import 'package:homescreentask/Constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PColor,
        leading: const Icon(
          Icons.menu,
        ),
        title: Image.asset(
          'assets/img.png',
          height: 75,
          width: 100,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SearchBar(),
              BannerPage(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 12,
                        color: PColor,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const GridveiwPage(),
              Flexible(child: const vegbanner()),
              Row(children: [
                Text("Trending Products",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,fontFamily: 'inter'),)
              ],),
                ProductsPage(),
              BottomBar()
            ],
          ),
         
        ),
      ),
    );
  }
}
