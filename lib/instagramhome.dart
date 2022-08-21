import 'package:flutter/material.dart';

class instaui extends StatefulWidget {
  const instaui({Key? key}) : super(key: key);

  @override
  State<instaui> createState() => _instauiState();
}

class _instauiState extends State<instaui> {

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/ig.png',width: 100,),
                Row(children: [Image.asset('images/newpost.png'),
                  SizedBox(width: 15,),
                  Image.asset('images/chat.png'), ],)
              ],
            ),
            SizedBox(height: 25,),
            Center(
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
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

            ),
            SizedBox(
              height: 5,
            ),
            Posts(),
            SizedBox(
              height: 5,
            ),
            Posts(),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            Posts(),
            SizedBox(
              height: 5,
            ),
            Posts(),
            SizedBox(
              height: 5,
            ),
            Posts(),
          ],
        ),
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
  Container Posts(){
    return Container(
      padding: EdgeInsets.all(5),
      height: 550,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('images/pfp.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Text('Username', style:TextStyle(fontWeight: FontWeight.bold),)

              ],),
              Icon(Icons.more_vert_rounded)
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 330,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/pfp.jpg')
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('images/Like.png'),
                  SizedBox(width: 5,),
                  Image.asset('images/Comment.png'),
                  SizedBox(width: 5,),
                  Image.asset('images/share.png'),
                ],
              ),
              Image.asset('images/Save.png'),

            ],
          ),
          SizedBox(height: 5,),

          Text("100 likes", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
          SizedBox(height: 5,),

          Row(
            children: [
              Text('Username', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 5,),
              Text('Description')
            ],
          ),
          SizedBox(height: 5,),

          Text('View 300 comments'),
          SizedBox(height: 5,),

          Text('16 hours ago')
        ],
      ),
    );
  }
}
