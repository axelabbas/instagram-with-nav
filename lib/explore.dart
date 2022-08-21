import 'package:flutter/material.dart';

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      padding: EdgeInsets.all(10),
      children: [
        Container(width: 300,height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.3),
          borderRadius: BorderRadius.circular(15),
        ),
          child: Row(
            children: [
              SizedBox(width: 18,),
              Icon(Icons.search,color: Colors.black,),
              SizedBox(width: 18,),
              Text('Search', style: TextStyle(color: Colors.grey.withOpacity(1),fontSize: 20),)
            ],
          ),

        ),
        SizedBox(height: 10,),
        Container(
          height: 630,
          width: 300 ,
          color: Colors.white,
          child: GridView.count(crossAxisCount: 3,
          mainAxisSpacing: 10 ,
          crossAxisSpacing: 10,
          children: [
            for (var i = 0; i<21; i++)
            post('https://instagram.fbgw41-1.fna.fbcdn.net/v/t51.2885-15/300003323_748711572878222_5056179908401395734_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fbgw41-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=2s_JcU50FLgAX-6JdnH&edm=AJ9x6zYBAAAA&ccb=7-5&ig_cache_key=MjkwODQ4NDU1MDI2MzQyODE3OA%3D%3D.2-ccb7-5&oh=00_AT9G0iC-3lGm8eTDmJji7fEtIir3LwTBf0MN3WqS4avodg&oe=63099711&_nc_sid=cff2a4'),
          ],),
        ),

      ],
    ));
  }
  Widget post(url) {
    return Container(
      width: 300,height: 300,
      decoration: BoxDecoration(
          color: Colors.grey,
        image: DecorationImage(
          image: NetworkImage(url)
        )
      ),
    );
  }
}
