import 'package:flutter/material.dart';
import 'package:taskscreens2/details.dart';
import 'package:taskscreens2/listarray.dart';

void main(List<String> args) {
  runApp(Myapp());

}
class Myapp extends StatelessWidget {
  final fud;
  const Myapp({super.key,this.fud});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // drawer:const  Drawer(),
      // backgroundColor: const Color.fromARGB(255, 234, 176, 122),
      body:
          //   decoration: BoxDecoration(
          //   image: DecorationImage(image: AssetImage("assets/images/backgrnd.jpeg"),
          //   colorFilter: ColorFilter.mode(Color.fromARGB(255, 37, 26, 26).withOpacity(0.4), BlendMode.darken),
          //   fit: BoxFit.fill)
          // ),
           Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/backgrnd.jpeg"), fit: BoxFit.fill)
                ),
                child: Stack(
                  children: [
              //       const  Padding(
              //    padding: const EdgeInsets.only(top: 20),
              //    child: const ListTile(
              //     leading: Icon(Icons.menu,color: Colors.white,),
                  
              //     trailing: Icon(Icons.shopping_cart,color: Colors.red,),
              //     ),
              //  ),
             const Padding(
               padding:  EdgeInsets.only(top: 30),
               child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Icon(Icons.menu,color: Colors.white,),
                  Icon(Icons.shopping_cart,color: Colors.red,),
             
                ],),
             ),


               Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ListView.separated(

                  separatorBuilder: (context, index) => SizedBox(
                    height: 30,

                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Column(
                  
                  children: [
                    Text(name[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("${itemno[index]} items")
                  ],
                 ),
               ),
        
                           
                           
               ),
        ),
                        
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: 20,
                          child: CircleAvatar(
                                  
                            radius: 35 ,
                            backgroundImage: AssetImage(food[index])),
                        ),
                        Positioned
                        (
                          top: 0,
                          bottom: 0,
                          right:20 ,
                          child: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>
                      Detail(
                        img: food[index],
                        // type: pizzatype[index],
                        item: name[index],

                      )));

                          }, icon: const Icon(Icons.arrow_circle_right_rounded, color: Colors.red,),
                           iconSize: 50,),
                        )

                      ],
                    );
                  },
                  // itemExtent: 170,
                  itemCount: 5,
                ),
          ),
                  ],
                ),
              ),
           
        
        
        
        
        
        
        
        );
  }
}

// class NewWidget extends StatelessWidget {
//   const NewWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left:50.0,right:50,),
//           child: Container(
//             width: double.infinity,
//             height: 100,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),

//            ),
//            child: Padding(
//              padding: const EdgeInsets.only(top: 20),
//              child: Column(
              
//               children: [
//                 Text(name[index],
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold
//                 ),),
//                 Text("${itemno[index]} items")
//               ],
//              ),
//            ),),
//         ),
//           Positioned(
//             top: 0,
//             bottom: 0,
//             left: 0,
//             child: Container(
//                        height: 20,
//                        width: 20,
//                        color: Colors.black,
//                          //foregroundImage:AssetImage(food[index]),    
                          
                             
//                             ),
//           ),
//             Positioned(
//             top: 0,
//             bottom: 0,
//             right: 20,
//             child: CircleAvatar(
//               child: IconButton(onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (context)=>
//                   Detail(
//                     img: food[index],
//                     type: pizzatype[index],
//                     item: name[index],

//                   )));



//               }, 
//               icon: Icon(Icons.arrow_circle_right_rounded),
//               iconSize: 50,
//               ),
//             )
//           ),
        
//       ],
//     );
//   }
// }
