import 'package:http/http.dart';
import 'package:todo_app/models/todo_model.dart';

class TodoNetwork{
String getDataUrl="https://jade-distinct-nightingale.cyclic.app/getAllTodos";
///Get all Todos
Future getAllTodos()async{

  Response response=await get(Uri.parse(getDataUrl));
  if(response.statusCode==200){
    print(response.body);
    return todoModelFromJson(response.body);
  }else{
    throw{
      Exception("Failed to get data from data base "),
      
    };
  }
}

///post/Create a new todo

//Update a todo by ID

//Delete todo by ID

}

