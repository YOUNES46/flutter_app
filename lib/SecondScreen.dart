import 'package:flutter/material.dart';
import 'package:flutter_app2/book.dart';

class SecondScreen extends StatelessWidget {
  final Book itemHolder ;

  SecondScreen({Key key, @required this.itemHolder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
              child: Stack(

            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
                        fit: BoxFit.cover,
                        image: NetworkImage("https://img-19.ccm2.net/8vUCl8TXZfwTt7zAOkBkuDRHiT8=/1240x/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg"),
                      )
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.4,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.25,
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
            ],
          )),
          Expanded(
            flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(itemHolder.name ,style: TextStyle(fontSize: 30),),
                  ),
                  Row(
                   // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("4.2"),
                            Icon(Icons.star,color: Colors.red,)
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("150"),
                            Icon(Icons.download_sharp,color: Colors.red,)
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("485"),
                            Icon(Icons.book,color: Colors.red,)
                          ],
                        ),
                      )

                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.red,
                        onPressed: () {
                          // Respond to button press
                        },
                        icon: Icon(Icons.credit_card ,color: Colors.white, size: 18),
                        label: Text("شراء",style: TextStyle(color: Colors.white),),
                      ),
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey,
                        onPressed: () {
                          // Respond to button press
                        },
                        icon: Icon(Icons.credit_card ,color: Colors.white, size: 18),
                        label: Text("قراءة",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                        child: Text(
                          "الملخض",style:TextStyle(color: Colors.black ,fontSize: 18),),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Text("الحرب والسلم هي رواية للكاتب الروسي   ليو تولستوي. نشرت أول مرة من س   1865 إلى سنة 1869 في مجلة المراسل  الروسي. وهي تروي قصة المجت  الروسي إبان حملات نابليون على روسيا   بين أحداث الحرب والسلم تدور أحداث  التي دمج تولستوي فيها  شخصيات عديدة، رئيسية و ثانوية، تارخية وأخرى خياليةـ ابتدعها تولستوي  نفسه....الخ." +""),
                  )
                ],


              ),

          ),
        ],
      ) ,
    );
  }
}
