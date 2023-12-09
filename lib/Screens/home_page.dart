import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idute/ModelData/model_data.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 50,left: 25,right: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //App Bar
                Row(
                  children: [
                    Text("IDUTE",style: TextStyle(color: Colors.white,fontSize: 27),),
                    Spacer(),
                    Icon(CupertinoIcons.search,color: Colors.white,size: 25,),
                    SizedBox(width: 20,),
                    Icon(CupertinoIcons.chat_bubble_text,color: Colors.white,size: 25,),
                  ],
                ),
                SizedBox(height: 30,),
                //Catogry Bar
                SizedBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ModelData.item.length,
                      itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.only(right: 20),
                        decoration:BoxDecoration(
                          color: Colors.grey.withOpacity(0.25),
                          border: Border.all(
                            color: Colors.white,
                             width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25),),
                        ),
                        padding: EdgeInsets.only(right: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(ModelData.item[index].cname.toString(),style: TextStyle(
                                color: Colors.white,fontSize: 15
                              ),),
                            ),
                          ),

                      );
                      }
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: ModelData.profile.length,
                      itemBuilder: (context, index){
                      return Container(
                       margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.35),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(CupertinoIcons.profile_circled,color: Colors.white,size: 40,),
                                  //name and time
                                  SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(ModelData.profile[index].cname.toString(),style: TextStyle(
                                        color: Colors.white, fontSize: 17,
                                      ),
                                      ),
                                      Text("10 min ago",style: TextStyle(
                                        color: Colors.grey, fontSize: 11,
                                      ),
                                      ),
                                    ],
                                  ),
                                  // health care
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                        color: Colors.grey.withOpacity(0.4),
                                        width: 1,
                                      )
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(ModelData.profile[index].catogry.toString(),style: TextStyle(
                                          color: Colors.white, fontSize: 13,
                                        ),),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Icon(Icons.more_vert,color: Colors.white,)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text(ModelData.profile[index].title.toString(),style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                              ),),
                              //description
                              SizedBox(height: 30,),
                              Text(ModelData.profile[index].desc.toString(),style: TextStyle(
                                color: Colors.white,
                              ),maxLines: 4, overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 20,),

                              // play pause button
                              Row(
                                children: [
                                  Container(
                                      child: Icon(CupertinoIcons.pause_fill,color:
                                      Colors.black,size: 30,),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                    ),
                                    height: 40,
                                    width: 40,
                                  ),
                                  SizedBox(width: 20,),
                                  Image.asset("assets/images/eq.png",height: 30,)
                                ],
                              ),
                              // vote hate container
                              SizedBox(height: 25,),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        )
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text("Vote",style: TextStyle(
                                          color: Colors.green, fontSize: 13,
                                        ),),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        )
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text("Hate",style: TextStyle(
                                          color: Colors.red, fontSize: 13,
                                        ),),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("10k Voted",style: TextStyle(
                                    color: Colors.grey, fontSize: 13,
                                  ),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.chat_bubble,color: Colors.grey,size: 30,)
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                      }
                  ),
                )
    ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded,color: Colors.white,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.lightbulb,color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit,color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none,color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled,color: Colors.white),
              label: 'Home',
            ),
          ],

        ),
      ),
    );
  }

}