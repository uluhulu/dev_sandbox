abstract class Banana {
  static void printBanana() {
    print('banana');
  }

  void methodToExtend() {}
}

class SecondBanana implements Banana {
  @override
  void methodToExtend() {
    // TODO: implement methodToExtend
  }
}
