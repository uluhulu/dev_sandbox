import 'package:dev_sandbox/try_getx/presentation/dep.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("title")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed('/favourites', arguments: 'banan'),
          child: Text('Navigate to favorites screen'),
        ),
      ),
    );
  }
}
