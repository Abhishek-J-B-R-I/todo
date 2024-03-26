class Task{
  final String tasktitle;
  bool ischecked;
  Task({this.ischecked=false,required this.tasktitle});

  void checkedfunction(){
    ischecked=!ischecked;
  }
}