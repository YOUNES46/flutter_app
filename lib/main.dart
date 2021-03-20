import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app2/book.dart';

import 'SecondScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Cairo",
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  @override
  _State createState() => _State();
}
Book book1 = Book.image("Book1", 12,"images/bk1.png");
Book book2 = Book.image("_book 3", 13,"images/bk3.png");
Book book3 = Book.image("book 4", 14,"images/bk4.png");
Book book4 = Book.image("book 5", 14,"images/bk4.png");

List<Book> names = <Book>[book1,book2,book3,book4,book1,book2,book3,book4,book1,book2,book3,book4];

class _State extends State<MyApp> {
  getItemAndNavigate(Book item, BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondScreen(itemHolder : item)
        )
    );
  }

int _currentindex = 0;

  TextEditingController nameController = TextEditingController();

  void addItemToList(){
    setState(() {
    Book book4 = Book.image("book 5", 14,"images/bk4.png");
      names.add(book4);
     // names.insert(0,nameController.text);
     // msgCount.insert(0, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.red));
    return DefaultTabController(
      initialIndex: 3,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title:
          
             Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: [
                 Container(
                   margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
            //  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(190, 211, 211, 211),
                    borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Center(
                        child: Container(
                          //padding: EdgeInsets.fromLTRB(0, 5, 0,0),//margin:EdgeInsets.symmetric(horizontal: 10,vertical: 5) ,
                          child: Image.asset("images/recharcher.png",height: 50,width:50,)),
                      ),

                            Container(
                            //  padding: EdgeInsets.fromLTRB(0, 5, 0,0),
                              margin:EdgeInsets.symmetric(horizontal: 30,vertical: 0) ,
                              width: 150,
                               child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "البحث عن كتاب",
                                hintStyle: TextStyle(color: Colors.black),
                                //icon: Icon(Icons.search,color: Colors.black,)
                            ),
                      ),
                             ),
                    ],
                  ),

            ),
                 Image.asset("images/NoPath.png",height: 100,width: 70,),
               ],
             ),
            centerTitle: true,
           // elevation: 20,
            bottom: TabBar(
              indicatorColor: Colors.red,
              indicatorWeight: 3,
              
              tabs: [
              
              Tab(child: Text("المفضلة",style: TextStyle(color: Colors.black),),),
              
              Tab(child: Text("تحميلات",style: TextStyle(color: Colors.black),),),
              Tab(child: Text("تصنيفات",style: TextStyle(color: Colors.black),),),
              
              Tab(child: Text("الرئيسية",style: TextStyle(color: Colors.black),),),
            ]),
          ),
          body:TabBarView(
            children: [
              pageprincipale4(),
               pageprincipale3(),
                pageprincipale2(),
                 pageprincipale(),
            ],

          ), 

        bottomNavigationBar: BottomNavigationBar(

          currentIndex: _currentindex ,
          backgroundColor: Colors.red,
          items: [
            BottomNavigationBarItem(

                icon: Image.asset("images/pp.png"),
              title: Text(''),
              backgroundColor: Colors.red,

            ),
            BottomNavigationBarItem(
              icon: Image.asset("images/store (1).png"),
              title: Text(''),
              backgroundColor: Colors.red,

            ),
            BottomNavigationBarItem(
              icon: Image.asset("images/alart.png"),
              title: Text(''),
              backgroundColor: Colors.red,

            ),
            BottomNavigationBarItem(
              icon: Image.asset("images/pp.png"),
              title: Text(''),
              backgroundColor: Colors.red,

            )
          ],
          onTap: (index){
            setState(() {
              _currentindex = index;
            });

          },
        ),
          
      ),
    );
   
  }
   Widget pageprincipale() => Scaffold(


     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: EdgeInsets.fromLTRB(10, 10,0 ,0),
               child: Text(
                 "المزيد",style:TextStyle(color: Colors.red ,fontSize: 18),),
             ),
             Padding(
               padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
               child: Text(
                 "الاكثر قراءة",style:TextStyle(color: Colors.black ,fontSize: 18),),
             ),


           ],
         ),

         Expanded(
           flex:2,
           child: ListView.builder(

             reverse: true,
               scrollDirection: Axis.horizontal,
               itemCount: 6,
               itemExtent: 130,
               itemBuilder: (BuildContext context, int index) {
                 return Container(
                   padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                     child:
                     Column(
                       children: [
                         Expanded(
                           flex :2,
                           child: InkWell(
                             onTap: ()=>{
                               getItemAndNavigate(names[index], context)

                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   fit: BoxFit.fill,
                                   image: NetworkImage("https://img-19.ccm2.net/8vUCl8TXZfwTt7zAOkBkuDRHiT8=/1240x/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"),
                                 )
                               ),
                             ),
                           ),
                         ),

                         Expanded(
                           flex: 1,
                             child: Padding(
                               padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                               child: Text(names[index].name),
                             )),
                       ],
                     ));
               }
           ),
         ),
         Align(
           alignment: Alignment.topRight,
           child: Padding(
             padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
             child: Text(
               "اخر الكتب",style:TextStyle(color: Colors.black ,fontSize: 18),),
           ),
         ),
         Expanded(
           flex: 3,
           child: GridView.count(
             padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
             shrinkWrap: true,
             crossAxisSpacing: 10,
             childAspectRatio: (15 / 30),
             // Create a grid with 2 columns. If you change the scrollDirection to
             // horizontal, this produces 2 rows.
             crossAxisCount: 4,
             // Generate 100 widgets that display their index in the List.
             children: List.generate(names.length, (index) {
               return Column(
                 children: [
                   Expanded(
                     flex :2,
                     child: InkWell(
                       onTap: ()=>{
                         getItemAndNavigate(names[index], context)

                       },
                       child: Container(
                         decoration: BoxDecoration(
                             image: DecorationImage(
                               fit: BoxFit.fill,
                               image: NetworkImage("https://img-19.ccm2.net/8vUCl8TXZfwTt7zAOkBkuDRHiT8=/1240x/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"),
                             )
                         ),
                       ),
                     ),
                   ),

                   Expanded(
                       flex: 1,
                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(0,10, 0, 0),
                         child: Text(names[index].name),
                       )),
                 ],
               );
             }),
           ),
         ),
       ],


        ),
   );
   Widget pageprincipale2() => Center(
     child: Text("page tow "),
   );
   Widget pageprincipale3() => Center(
     child: Text("page three "),
   );
   Widget pageprincipale4() => Center(
     child: Text("page four "),
   );
}