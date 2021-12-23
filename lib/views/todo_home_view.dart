import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_network.dart';

class TodoHomeView extends StatefulWidget {
  const TodoHomeView({ Key? key }) : super(key: key);

  @override
  _TodoHomeViewState createState() => _TodoHomeViewState();
}

class _TodoHomeViewState extends State<TodoHomeView> {
  Future? getData;
  TodoNetwork network=TodoNetwork();

  @override
  void initState() {
    // TODO: implement initState
    this.getData=network.getAllTodos();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).textTheme.headline2!.backgroundColor,
        title: Text("My taskes,"),
        leading: CircleAvatar(),
        actions: [
          IconButton(onPressed: (){}, icon:Icon (Icons.filter_list_sharp)),
          IconButton(onPressed: (){},icon: Icon(Icons.search),)
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context,index) => ListTile(
          title: Text("Trip to Finland"),
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline),
          ),
          trailing: TextButton.icon(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded ), label:Text("Yestaday") )
        ),
        separatorBuilder: (context,index) => SizedBox(height:5),
         itemCount: 10)
      
    );
  }
}