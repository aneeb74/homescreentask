import 'package:flutter/material.dart';
import 'package:homescreentask/Componants/Model.dart';





class GridveiwPage extends StatefulWidget {
  const GridveiwPage({Key? key}) : super(key: key);

  @override
  State<GridveiwPage> createState() => _GridveiwPageState();
}

class _GridveiwPageState extends State<GridveiwPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: IconModel.home.length,
            itemBuilder: (context, index) {
              return Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        IconModel.home[index].text!,
                        style: TextStyle(
                          color: IconModel.home[index].color!,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      bottom: 0.1,
                      child: Image.asset(
                        IconModel.home[index].image!,
                        fit: BoxFit.cover,
                        width: 120,
                        height: 71,
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 30,
                      child: CircleAvatar(

                        backgroundColor: IconModel.home[index].color!,
                        child: Image.asset(IconModel.home[index].iconImage!,fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


