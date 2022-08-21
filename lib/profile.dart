import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            coverImg(),
            Positioned(
              top: 80,
              height: 200,
              width: 400,
              child: Container(

                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 150, // +50 below circle Container
                    ),
                    const Text(
                      'Happiness',
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ],

                ),
              ),

            ),
            Positioned(
              top: 40,
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        'images/pfp.jpg',
                      )),
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),

        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text('Full Name',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
                SizedBox(height:5,),
                Text('Iraq, Baghdad',style: TextStyle(fontSize: 15  ,color: Colors.grey),),
                SizedBox(height:15,),
                Text('Im a negative person, i dont like to travel',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.black),),
                Text('Please do not text me',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.black),),
                SizedBox(height:25,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,width:50,
                      child:Icon(Icons.message_outlined,color: Colors.blueAccent,),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(.3)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      height: 50,width:150,
                      child:
                      Center(child: Text('Follow',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueAccent
                      ),
                    ),
                    Container(
                      height: 50,width:50,
                      child:Icon(Icons.share,color: Colors.blueAccent,),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(.3)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    )
                  ],),
                SizedBox(height:25,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('870',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
                        Text('Following',style: TextStyle(fontSize: 15  ,color: Colors.grey),),
                      ],
                    ),
                    Container(width: 1,height: 50,color: Colors.grey.withOpacity(.3),),
                    Column(
                      children: [
                        Text('120k',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
                        Text('Followers',style: TextStyle(fontSize: 15  ,color: Colors.grey),),
                      ],
                    ),
                    Container(width: 1,height: 50,color: Colors.grey.withOpacity(.3),),
                    Column(
                      children: [
                        Text('345k',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
                        Text('Likes',style: TextStyle(fontSize: 15  ,color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height:15,),
                Container(width: 500,height: 3,color: Colors.grey.withOpacity(.3),),
                SizedBox(height:15,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Followers',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text('View All',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),),

                  ],
                ),
                SizedBox(height:10,),

                Container(
                  padding: EdgeInsets.all(7),
                  height: 100,
                  width: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      StoriesCirc(70,70),
                      SizedBox(
                        width: 10,
                      ),
                      StoriesCirc(70,70),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      StoriesCirc(70,70),
                      SizedBox(
                        width: 10,
                      ),
                      StoriesCirc(70,70),

                      SizedBox(
                        width: 10,
                      ),
                      StoriesCirc(70,70),StoriesCirc(70,70),
                      SizedBox(
                        width: 10,
                      ),
                      StoriesCirc(70,70),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      StoriesCirc(70,70),
                      SizedBox(
                        width: 10,
                      ),
                      StoriesCirc(70,70),

                      SizedBox(
                        width: 10,
                      ),
                      StoriesCirc(70,70),
                    ],
                  ),
                ),
                SizedBox(height:20,),
                Container(width: 500,height: 3,color: Colors.grey.withOpacity(.3),),
                SizedBox(height:20,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Posts',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text('View All',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: Container(

                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                ),Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: Container(

                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                ),Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: Container(

                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(image: AssetImage('images/genshin.jpg'),fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),

        ),

      ],
    );
  }

  Container coverImg() {
    return Container(
      color: Colors.grey,
      child: Image.asset('images/bg.jpg', width: double.infinity,
        height: 150,
        fit: BoxFit.cover,),
    );
  }
  Widget StoriesCirc(double h,double w,){
    return Column(
      children: [
        Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('images/pfp.jpg'),
                  fit: BoxFit.fill
              )
          ),
        ),
        Text('username')
      ],
    );
  }
}

