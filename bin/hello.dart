// import 'package:hello/hello.dart' as hello;

void main(List<String> arguments) {
  print('Hallo!: $arguments!');
  print("Hallo Welt!");
  print("Hallo Jutta Jenssen!");

  String hallo = "Hallo";
  String ort = "Welt";
  String name = "Jutta Jenssen";

  print(hallo!);
  print("Hallo $ort!");
  print("Hallo $name!");
  
  String begrussung = "Hallo " + ort + " und " + name + "!";
  print(begrussung);

  print(name.length);
  print(ort.length);
  

}
