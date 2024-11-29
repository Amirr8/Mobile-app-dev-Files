class AsyncProgram{
  Future<List<Map<String,dynamic>>> getUsers() async{
    var user = [{'id':1, 'name':'Hello'},
      {'id':2, 'name':'How'}];
    return user;
  }

}

