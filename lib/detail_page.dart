import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;
  const DetailPage({Key? key, this.heroTag, this.foodName,this.foodPrice}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var selectedCard = 'CALORIES';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body:  ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
              Navigator.pop(context);
                }, icon:
              const Icon(Icons.arrow_back_ios_new),
                color: Colors.white,
              ),
              Container(
                width: 152,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Details',style: TextStyle(fontFamily: 'Montserrat',fontSize: 18,color: Colors.white),),

                  ],
                ),
              ),
              IconButton(onPressed: (){}, icon:
              const Icon(Icons.more_horiz),
                color: Colors.white,

              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height ,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 120,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(45),
                          topRight: Radius.circular(45)),
                      color: Colors.white
                  ),
                  height: MediaQuery.of(context).size.height - 100,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 90,
                left: (MediaQuery.of(context).size.width/2)-100,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                        image:  DecorationImage(
                            image: AssetImage(widget.heroTag),
                            fit: BoxFit.fill
                        )
                    ),
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                top:330,
                left: 25,
                right: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.foodName,style: const TextStyle(fontFamily: 'Montserrat',fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 20,),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.foodPrice,style: const TextStyle(fontFamily: 'Montserrat',fontSize: 20,color: Colors.grey)),
                        Container(
                          height: 35,
                          color: Colors.grey,
                          width: 1,
                     ),
                       Container(
                         width: 125,
                         height: 40,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(17),
                           color: Colors.lightBlue,
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             InkWell(
                               onTap: (){},
                               child: Container(
                                 height: 25,
                                 width: 25,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(7),
                                   color: Colors.white,
                                 ),
                                 child: const Icon(
                                   Icons.remove,
                                   color: Colors.lightBlue,
                                   size: 20,
                                 ),
                               ),
                             ),
                             const Text('2',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,color: Colors.white)),
                             InkWell(
                               onTap: (){},
                               child: Container(
                                 height: 25,
                                 width: 25,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(7),
                                   color: Colors.white,
                                 ),
                                 child: const Icon(
                                   Icons.add,
                                   color: Colors.lightBlue,
                                   size: 20,
                                 ),
                               ),
                             ),
                           ],
                         ),
                       )
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildInfoCard('WEIGHT', '300', 'G'),
                          const SizedBox(width: 10,),
                          _buildInfoCard('CALORIES', '1000', 'CAL'),
                          const SizedBox(width: 10,),
                          _buildInfoCard('AVAIL', 'NO', 'AVL'),
                          const SizedBox(width: 10,),
                          _buildInfoCard('Abc', 'yO', 'L'),
                          const SizedBox(width: 10,),

                        ],
                      ),
                    ),
                    const SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue,
                        ),
                        child: const Center(child: Text('\₹300',style: TextStyle(fontFamily: 'Montserrat', color: Colors.white,fontSize: 20),)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }
  Widget _buildInfoCard(String cardTitle, String info, String unit){
    return InkWell(
      onTap: (){
        selectCard(cardTitle);
      },

      child: AnimatedContainer(
        duration:const Duration(milliseconds: 500),
    curve: Curves.easeIn,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: cardTitle == selectedCard ? Colors.lightBlue: Colors.white,
      border: Border.all(
        color: cardTitle == selectedCard ? Colors.transparent : Colors.grey.withOpacity(0.3),
        style: BorderStyle.solid,
          width: 3
      )
      ),
          height:50,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding:const EdgeInsets.only(top: 8,left: 15),
              child: Text(cardTitle,style: TextStyle(fontFamily: 'Montserrat',fontSize: 13,
              color: cardTitle == selectedCard ? Colors.white : Colors.grey.withOpacity(0.5)),),
            ),
            Padding(
                padding:const EdgeInsets.only(left: 15,bottom: 8),
              child: Column(
                children: [
                  Text(info,style: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14,
                    color: cardTitle == selectedCard ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold
                  )),
                  Text(unit,style: TextStyle(
                      fontFamily: 'Montserrat', fontSize: 12,
                      color: cardTitle == selectedCard ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold
                  ))
                ],
              ),
            )
          ],
        )
    ),
    );
  }
  selectCard(cardTitle){
    setState(() {
      selectedCard =cardTitle;
    });
  }
}
