import 'package:flutter/material.dart';

import '../Constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 345,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.location_on_outlined,color: PColor,),
                        hintText: 'Markaz, Sector 7, H23...',hintStyle: TextStyle(color: Colors.black),
                        filled: true,

                        border:UnderlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      height: 30,
                      width: 95,
                      decoration: BoxDecoration(
                          color: PColor,
                          borderRadius:BorderRadius.circular(15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.watch_later,color: Colors.white,),
                          Text('Pick time',style: TextStyle(
                              color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  )
                ],
              ),


            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: PColor,
              child: Icon(Icons.search,color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
