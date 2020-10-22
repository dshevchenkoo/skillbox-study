

void main() {
  // 1.
  List<String> users = ['anna', 'viKtor', 'Mike', 'aleX', 'dan'];
  print(toUpperCaseFirst(users: users));
  print(toUpperCaseFirst(users: []));
  
  // 2.
  List<Map<String, dynamic>> data = [
    {"name": "Batman", "age": 30},
    {"name": "Spiderman", "age": 18},
    {"name": "Kung fury", "age": 23},
    {"name": "Tor", "age": 550},
    {"name": "Halk", "age": 44},
    {"name": "Iron man", "age": 35},
  ];
  print(findUser(users: data, searchName:'Tor'));
  print(findUser(users: [], searchName: ''));
  
  // 3.
  SuperMan superMan = SuperMan(speed: 1222);
  superMan.say();


}

// 1.
List<String> toUpperCaseFirst({List<String> users}) {
  return users.map((user) => "${user[0].toUpperCase()}${user.substring(1).toLowerCase()}").toList();
}

// 2.
Map<String, dynamic> findUser({List<Map<String, dynamic>> users, String searchName}) {
  List<Map<String, dynamic>> neededUsers = users.where((user) => user["name"] == searchName).toList();
  return neededUsers.length == 0 ? {"name": "Anonimus", "age": 0} : neededUsers[0];
}

// 3.
abstract class Hero {
  void say();
}

mixin Fly {
  void canFly(int speed) {
    print("Я могу летать со скоростью ${speed} км/ч");
  }
}

mixin Jump {
  void canJump() {
    print('Я могу прыгать');
  }
}

class SuperMan extends Hero with Fly, Jump {
  int speed; 
  
  SuperMan({int this.speed});
  say() {
    canFly(speed);
    canJump();
  }
}
