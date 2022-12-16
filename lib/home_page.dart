import 'package:flutter/material.dart';
import 'package:flutter_tutorial/favorite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              Image.asset('assets/images/menu.png',height: 30,),
              SizedBox(width: 30,),
              Text('Neatsy',style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text:
            const TextSpan(
              text: '3D Scan',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),
              children: [
                TextSpan(
                  text: ' ready',style: TextStyle(fontWeight: FontWeight.w900)
                ),
              ]
            )),
            SizedBox(height: 10,),
            Image.asset('assets/images/foot.png'),
            SizedBox(height: 10,),
            const Text('Your feet details',style: TextStyle(fontWeight: FontWeight.w900,
            fontSize: 17
            ),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Image.asset('assets/images/ruler.png',height: 25,),
                  SizedBox(width: 10,),
                  Text('26.5 cm',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8),
            child: Image.asset('assets/images/metter1.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('Narrow',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
                Text('Wide',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8),
              child: Image.asset('assets/images/metter2.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('Flat',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
                Text('Arched',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.greenAccent.shade400,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.greenAccent.shade200,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.black,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade200
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 6,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Favorite()));
                      },
                      child: Container(
                        height: 70,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xff51e194)
                        ),
                        child: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
