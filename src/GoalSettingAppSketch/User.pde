class User{
  Table table;
  String userName;
  String password;
  User(String userName,String password, Table table ){
    this.userName = userName;
    this.password = password;
    if (table == null) {
      this.table = new Table();
      this.table.addColumn("Goal");
  }
  else {
    this.table = table;
  }
}