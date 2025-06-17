import 'package:dev_sandbox/try_getx/presentation/dep.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    Get.snackbar(
      "Hey i'm a Get SnackBar!", // title
      "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
      icon: Icon(Icons.alarm),
      shouldIconPulse: true,
      onTap: (_) {},
      barBlur: 20,
      isDismissible: true,
      duration: Duration(seconds: 3),
      instantInit: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:
              () => Get.defaultDialog(
                onConfirm: () => print("Ok"),
                middleText: "Dialog made in 3 lines of code",
              ),
          child: Text('Dialog'),
        ),
      ),
    );
  }

  // Widget buttonWithResult({
  //   required final String text,
  //   required final bool result,
  // }) => TextButton(
  //   onPressed: () {
  //     Get.closeDialog(result: result);
  //   },
  //   child: Text(text),
  // );
}
