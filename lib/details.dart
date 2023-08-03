// ignore_for_file: prefer_typing_uninitialized_variables


import 'package:flutter/material.dart';
import 'package:taskscreens2/last.dart';
import 'package:taskscreens2/listarray.dart';

// import 'package:taskscreens2/listarray.dart';

// ignore: must_be_immutable
class Detail extends StatefulWidget {
 
  final img;
  final type;
  final item;
 
   Detail({super.key,this.img,this.type,this.item,});

   int count=0;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final tempList = [];
    final tmpList =[];
    if(widget.item == "Pizza"){
      tempList.addAll(pizzatype);
      tmpList.addAll(pizzaimg);

    } else if (widget.item == "Burger"){
      tempList.addAll(burtype);
      tmpList.addAll(burgimg);
    }
    else if (widget.item=="Sandwich"){
      tempList.addAll(sandtype);
      tmpList.addAll(sandimg);
    }
    else if (widget.item=="Beverages"){
      tempList.addAll(bevtype);
      tmpList.addAll(bevimg);
    }
    else if (widget.item=="Desserts"){
      tempList.addAll(destype);
      tmpList.addAll(desimg);
    }
    return  SafeArea(
      child: Scaffold(
        // appBar: AppBar(backgroundColor: Colors.transparent,),
    
        // backgroundColor:Colors.red,
        body: Stack(
          children: [
             Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/backgrnd.jpeg"), fit: BoxFit.fill)
                ),
              ),
           IconButton(onPressed: (){
            Navigator.pop(context);
    
        }, icon: Icon(Icons.arrow_back,color: Colors.white,
        
        )),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(widget.item
                    ,textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ListView.separated(
                      itemBuilder:(context,index)=> 
                      Stack(
                        children: [
                          
                          // Stack(
                                
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(left:50,right:50),
                            child: GestureDetector(
                              onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                              Lst(
                                itemtype: tempList[index],
                                middleimg: tmpList[index],
                                
                              )
                              //tempList[index]
                             )),
                              child: Container(
                                width: double.infinity,
                                height: 300,
                                decoration: 
                                BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                              
                                ),
                                child: 
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    children: [
                                      //if(widget.item=="Pizza")
                                      Center(child: Text(
                                      tempList[index],style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25
                                      ),
                                       ),
                                       ),
                                  
                                       Container(
                                        padding: const EdgeInsets.only(top: 30,bottom: 5,left: 20),
                                        child:const Row(
                                          children: [
                                             Icon(Icons.star,color: Colors.amber,),
                                             Text("4/5",textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 20
                                            ),),
                                            
                                          ],
                                        ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: const Row(
                                            children: [
                                               Text("200gm",style: TextStyle(fontSize: 20),),
                                            ],
                                          ),
                                        ),
                                       
                                       
                                       Container(
                                        padding: const EdgeInsets.only(top: 30,left: 150,bottom: 40),
                                         child: const Text("200 Rs.",style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                         ),),
                                       ),
                                
                                
                                       
                                       
                                
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
                                                  widget.count= widget.count-1;
                                                });
                                                }, 
                                                icon: const Icon(Icons.remove),color: Colors.black,
                                                ),
                                                Text(widget.count.toString()),
                                            
                                            
                                               IconButton(onPressed: (){
                                                setState(() {
                                                   widget.count+=1;
                            
                                                });
                                             
                                                }, 
                                                icon: const Icon(Icons.add),color: Colors.black,
                                                ),
                                            
                                              ],
                                            ),
                                          ),
                                        )
                                    ]
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30,left: 10),
                            child: Align(
                              
                              alignment: AlignmentDirectional.centerStart,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(widget.img),
                                
                              )),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30,right: 30),
                              child: Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius:28,
                                child: IconButton(onPressed: (){
                                
                                                      
                                },
                                 icon: const Icon(Icons.shopping_cart_checkout_rounded,
                                 color: Colors.white,)
                                 ),
                                                        )),
                            )
                     
                          
                          
                        ],
                      ),
                      
                      separatorBuilder: (context, index) => 
                      const SizedBox(height: 50,),
                          
                      itemCount: tempList.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
               ] ),
      ),
    );
  }
}

