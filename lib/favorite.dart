import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        automaticallyImplyLeading: false,
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
        padding: const EdgeInsets.only(left: 20.0,top: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text:
            const TextSpan(
                text: 'What about your\n',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500,color: Colors.black),
                children: [
                  TextSpan(
                      text: 'favorite sneakers?',style: TextStyle(fontWeight: FontWeight.w900,letterSpacing: 0.8)
                  ),
                ]
            )),

            SizedBox(height: 25,),
            const Text('Brand',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            Padding(padding: const EdgeInsets.symmetric(vertical: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 180,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Color(0xff51e194),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/images/nike.png',height: 60,),
                          SizedBox(height: 30,),
                          const Padding(padding: EdgeInsets.only(left: 38.0),
                          child: Text('Nike',style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 55,
                            width: 105,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Icon(Icons.check),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 180,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/images/asics.png',height: 60,color: Colors.black,),
                          SizedBox(height: 30,),
                          const Padding(padding: EdgeInsets.only(left: 38.0),
                            child: Text('Asics',style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 55,
                            width: 105,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.shade200,
                            ),
                            child: Icon(Icons.add),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 180,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/images/adidas.png',height: 60,),
                          SizedBox(height: 30,),
                          const Padding(padding: EdgeInsets.only(left: 38.0),
                            child: Text('Adidas',style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 55,
                            width: 105,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.shade200,
                            ),
                            child: Icon(Icons.add),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
            SizedBox(height: 10,),
            const Text('Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            Padding(padding: EdgeInsets.symmetric(vertical: 20),
            child: Image.asset('assets/images/scale.png'),
            ),
           const Center(
              child: Text('ERU 42           US 8',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
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
                         const CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.black,
                          ),
                         const CircleAvatar(
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
                            color: Colors.white
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
                              color: Colors.black
                          ),
                          child:const Icon(Icons.check,color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
