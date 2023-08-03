import 'package:flutter/material.dart';
import 'package:taskscreens2/listarray.dart';

class Lst extends StatefulWidget {
  final itemtype;
  final middleimg;
  const Lst({super.key,this.itemtype, this.middleimg});
  

  @override
  State<Lst> createState() => _LstState();
}
    


class _LstState extends State<Lst> {
  int cont=0;

  @override
  Widget build(BuildContext context) {

     final itmList = [];
    if(widget.itemtype == "Pizza"){
      itmList.addAll(itmtype);
    } else if (widget.itemtype == "Burger"){
      itmList.addAll(itmtype);
    }
    else if (widget.itemtype=="Sandwich"){
      itmList.addAll(itmtype);
    }
    else if (widget.itemtype=="Beverages"){
      itmList.addAll(itmtype);
    }
    else if (widget.itemtype=="Desserts"){
      itmList.addAll(itmtype);
    }
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.transparent,),
      backgroundColor: Colors.red,
      
      body: SafeArea(
        child: Stack(
          children: [
            Container(
          
             child: IconButton(onPressed: (){
               Navigator.pop(context);
             }, 
             
             icon:const  Icon(Icons.arrow_back,color: Colors.white,)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                topRight: Radius.circular(30))),
                child:  Column(
                                  children: [
                                   
                                   
                                     
                                     Container(
                                      padding: const EdgeInsets.only(top: 100,bottom: 5,left: 20),
                                      child: Row(
                                        children: [
                                          
                                           Text(widget.itemtype,textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 20
                                          ),),
                                          
                                        ],
                                      ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: const Row(
                                          children: [
                                             Text("200Rs.",style: TextStyle(fontSize: 20,
                                             color: Colors.green,
                                             fontWeight: FontWeight.bold),
                                             ),
                                          ],
                                        ),
                                      ),
                                     
                                     
                                    //  Container(
                                    //   padding: const EdgeInsets.only(top: 30,left: 150,bottom: 40),
                                    //    child: const Text("200 Rs.",style: TextStyle(
                                    //     color: Colors.red,
                                    //     fontWeight: FontWeight.bold,
                                    //     fontSize: 20
                                    //    ),),
                                    //  ),
                              
                              
                                     
                                     
                              
                                      Padding(
                                        padding: const EdgeInsets.only(left: 50,right: 40),
                                        child: Container(
                                         
                                          width: 140,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.red
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              IconButton(onPressed: (){
                                              setState(() {
                                                
                                              });
                                              }, 
                                              icon: const Icon(Icons.remove),color: Colors.black,
                                              ),
                                              const Text("5"),
                                             
                                          
                                          
                                             IconButton(onPressed: (){
                                              setState(() {
                                             
                          
                                              });
                                           
                                              }, 
                                              
                                              icon: const Icon(Icons.add),color: Colors.black,
                                              ),
                                          
                                            ],
                                          ),
                                        ),
                                      ),
                                       Container(
                                      padding: const EdgeInsets.only(top: 50,bottom: 5,left: 20),
                                      child:const Row(
                                        children: [
                                           Icon(Icons.star,color: Colors.amber,),
                                           Text("4/5",textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey
                                          ),),

                                           Padding(
                                             padding: EdgeInsets.only(left: 70,right: 70),
                                             child: Row(
                                                                                   children: [
                                             Icon(Icons.water_drop,color: Color.fromARGB(255, 255, 7, 7),),
                                             Text("100kcal",textAlign: TextAlign.left,
                                                                                     style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey
                                             ),
                                          ),
                                        ]
                                        ),
                                           ),

                                       Row(
                                       children: [
                                        Icon(Icons.watch,color: Color.fromARGB(255, 0, 0, 0),),
                                        Text("30min",
                                        style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey
                                             ),
                                          ),
                                        ]
                                        ),
                                        ],
                                      ),
                                      ),

                                      const Padding(
                                        padding:  EdgeInsets.all(20.0),
                                        child:  Align(
                                          alignment: AlignmentDirectional.centerStart,
                                          child:  Text("About Food",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),)),
                                      ),

                                       const Padding(
                                        padding:  EdgeInsets.only(left:20.0,bottom: 20),
                                        child:  Align(
                                          alignment: AlignmentDirectional.centerStart,
                                          child:  Text("A hugely popular margheritta pizza with juicy toppings ",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey
                                          ),)),
                                      ),


                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: ElevatedButton(onPressed: (){
                                      
                                        }, 
                                                                           
                                        style:ElevatedButton.styleFrom(
                                          minimumSize: const Size.fromHeight(50),
                                        
                                          backgroundColor: Colors.red
                                        ),
                                         child: const Text("Add to Cart",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                        ),),
                                        
                                        ),
                                      )


                                  ]
                                ),











              ),
             
            ),
             Padding(
              padding:  const EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.topCenter,
                child:  CircleAvatar(
                  backgroundImage: AssetImage(widget.middleimg),
                  radius: 70,),
              ),
            )
          ],
        )),
      
    );
  }
}