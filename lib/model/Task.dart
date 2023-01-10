class Task{
 late  final String name;
 late  bool isDone ;

  Task(String tName){
    name = tName;
    isDone = false;

  }

  void togleDone(){
    isDone = !isDone;
  }


}