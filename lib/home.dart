import 'package:flutter/material.dart';
import 'package:to_do/settings.dart';
import 'package:to_do/task_list.dart';

import 'add_task_buttomsheet.dart';

class homePage extends StatefulWidget {
  static const String routeName='home';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
 int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:MediaQuery.of(context).size.height*0.2,
        elevation: 0,
        title: Text("To Do List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
      ),


      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12 ,
        child: BottomNavigationBar(
          currentIndex:selectedIndex ,
          onTap: (index){
            selectedIndex=index;
            setState(() {

            });
          },
          items: [

            BottomNavigationBarItem(icon:  Icon(Icons.list)
            ,label: "task"),
            BottomNavigationBarItem(icon:  Icon(Icons.settings)
                ,label: "settings"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addTaskButtomSheet();
        },
        child: Icon(Icons.add,size: 35,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     body: tabs[selectedIndex],
    ) ;
  }
      List<Widget>tabs=[taskListTab(),setting()];
      void addTaskButtomSheet(){
        showModalBottomSheet(
            context: context,
            builder: (context)=> AddTaskBottomSheet(),
        );
  }
}
