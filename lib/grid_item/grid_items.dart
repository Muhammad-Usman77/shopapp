import 'package:flutter/material.dart';
import 'package:shop_app/screens/item_screen.dart';

class GridItems extends StatefulWidget {
  const GridItems({super.key});

  @override
  State<GridItems> createState() => _GridItemsState();
}

class _GridItemsState extends State<GridItems> {
  var pNames = ["watch", "Tshirt", "bags", "Shoes"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pNames.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0.5,

          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Container(

            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFFD4ECF7),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "30% off",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.favorite_outlined,
                        color: Colors.redAccent,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: InkWell(
                      onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ItemScreen()));
                      },
                      child: Image.asset("images/${pNames[index]}.png",
                      height: 40,
                      width: 40,),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                      padding: EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(pNames[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 15,
                      ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("\$100",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.redAccent
                          ),
                          ),
                          Text("\$130",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                                 color: Colors.black.withOpacity(0.4)
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
