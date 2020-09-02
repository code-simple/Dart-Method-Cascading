main() {
  //Cascading Methods
  Computer com1 = new Computer();
  com1
    ..usb = 2           // Using Method cascading we dont need to write method
    ..color = 'Blue'    //again and no need to put semi-col for every property
    ..watts = 345.43
    ..VideoCard = false;
  print(com1.summary());
}

class Computer {
  int usb;
  String color;
  double watts;
  bool VideoCard;
  String get haveVideoCard {
    return (VideoCard == true ? 'a' : 'no');
  }

  summary() => '''You have a $color computer, with $usb usb ports,
$haveVideoCard video card, and use $watts watts of power.''';
}
