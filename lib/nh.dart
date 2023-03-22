/*

 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   InkWell(
                     child: Container(
                       height: 65,
                       width: 60,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(
                           color: Colors.black,
                           style: BorderStyle.solid,
                           width: 1.0
                         )
                       ),
                       child: const Center(child: Icon(Icons.search,color: Colors.black,)),
                     ),
                     onTap: (){},
                   ),
                   InkWell(
                     child: Container(
                       height: 65,
                       width: 60,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                                 width: 1.0
                           )
                          ),
                      child: const Center(child: Icon(Icons.add_shopping_cart_outlined,color: Colors.black,)),
                     ),
                     onTap: (){},
                   ),
                    Container(
                      height:65,
                      width:150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                      child: const  Center(child: Text('Checkout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)),
                       ),
                  ]
                )
 */
//list view
/*
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
 */
// another list view
/*
child: ListView(

              padding: EdgeInsets.only(top: 35,right:20),
              children: [
                Padding(
                    padding:EdgeInsets.only(top:20),
                child: Container(
                  height: MediaQuery.of(context).size.height-300,

                )),
              ],
            )
 */