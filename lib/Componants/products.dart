import 'package:flutter/material.dart';
import 'package:homescreentask/Componants/Model.dart';
import '../Constant.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int text = 0;

  var i=1;

 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: Productmodel.home.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: PinkColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: Image.asset(
                            Productmodel.home[index].image2!,
                            width: 120,
                            height: 71,
                          ),
                        ),
                      ),
                      Text(
                        Productmodel.home[index].text1!,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
                      ),
                      Text(Productmodel.home[index].weight!,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 9)),
                      Text(Productmodel.home[index].amount!,style: TextStyle(color: PColor,fontWeight: FontWeight.w600),),
                      
                      Container(
                        decoration: BoxDecoration(
                          color: PColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  //var i;
                                  if (i > 0) {
                                    text--;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              text.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  text++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
