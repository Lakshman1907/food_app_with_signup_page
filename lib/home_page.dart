import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'detail_page.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:   const Color(0xFF5c527f),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: const Color(0xFF5c527f),
          animationDuration: const Duration(milliseconds: 300),
          items: const [
          Icon(Icons.home,color: Colors.white,),
          Icon(Icons.add_shopping_cart_outlined,color: Colors.white,),
          Icon(Icons.search,color: Colors.white,),
        ],),
        body: ListView(
          children: [
            Padding(
              padding:const EdgeInsets.only(top:15,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon:
                  const Icon(Icons.arrow_back_ios_new),
                    color: Colors.white,

                  ),
                  Container(
                    width: 152,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon:
                        const Icon(Icons.filter_list),
                          color: Colors.white,
                        ),
                        IconButton(onPressed: (){}, icon:
                        const Icon(Icons.menu),
                          color: Colors.white,

                        )
                      ],
                    ),
                  )
                ],
              ),

            ),
            const SizedBox(height:27),
            Padding(
              padding:const EdgeInsets.only(left:40),
              child: Row(
                children: const [
                   Text('Tasty',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white, fontWeight: FontWeight.bold,
                          fontSize: 27)),
                  SizedBox(width:10),
                  Text('Food',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white, fontSize: 25,fontWeight: FontWeight.normal))
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
                height: MediaQuery.of(context).size.height-185,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(77)),
                ),
                child: ListView(
                  primary: false,
                  padding: const EdgeInsets.only(top: 35,right:20),
                  children: [
                    Padding(
                        padding:const EdgeInsets.only(top:40),
                        child: Container(
                          height: MediaQuery.of(context).size.height-340,
                          child: ListView(
                            children: [
                              _buildFoodItem('assets/images/brny.jpg', 'Biryani Bowl', '\₹150.00'),
                              _buildFoodItem('assets/images/chmn.jpg', 'Chowmin plate', '\₹130.00'),
                              _buildFoodItem('assets/images/mm.jpg', 'Momo plate', '\₹140.00'),
                              _buildFoodItem('assets/images/crd.jpg', 'Curd Rice Bowl', '\₹150.00'),
                              _buildFoodItem('assets/images/coc.jpeg', 'Coca-cola Drink', '\₹70.00'),
                              _buildFoodItem('assets/images/spr.jpeg', 'Sprite Drink', '\₹70.00')
                            ],

                          ),
                        )),
                  ],
                )
            )
          ],
        )
    );
  }
  Widget _buildFoodItem(String imgpath, String foodname, String price){
    return Padding(
        padding:const EdgeInsets.only(left: 10,right: 10,top: 10),
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder:(context) => DetailPage(heroTag: imgpath, foodName: foodname,foodPrice: price,) ));

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Hero(tag: imgpath,
                        child:Image(
                          image: AssetImage(imgpath),
                          fit: BoxFit.fill,
                          height:75,
                          width: 75,
                        )
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodname,style: const TextStyle(fontFamily: 'Montserrat',fontSize: 17,fontWeight: FontWeight.bold),),
                        Text(price,style: const TextStyle(fontFamily: 'Montserrat',fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)
                      ],
                    )
                  ],
                ),
              ),
              IconButton(onPressed: (){},
                icon:  const Icon(Icons.add),
                color: Colors.black,
              )
            ],
          ),
        ));
  }
}
