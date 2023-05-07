import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late final double tileWidth = MediaQuery.of(context).size.width / 5.0;
  final Color tileColor1 = Colors.brown;
  final Color tileColor2 = Colors.brown.shade400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ...List.generate(5, (rowIndex) => Row(children: [
            ...List.generate(5, (columnIndex) => Container(
              decoration: BoxDecoration(
                color: buildTileColor(columnIndex, rowIndex)
              ),
              width: tileWidth,
              height: tileWidth,
              child: Text("${rowIndex + 1}, ${columnIndex + 1}"),
            ))
          ],))
        ],
      ),
    );
  }

  Color buildTileColor(int columnIndex, int rowIndex){
    int value = columnIndex;
    if (rowIndex.isEven) {
      value++;
    }
    return value.isEven ? tileColor1 : tileColor2;
  }
}


