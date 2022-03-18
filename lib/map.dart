import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  const Tile(this.nums,{ Key? key }) : super(key: key);
  final int nums;
  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    final int n = widget.nums;
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(2),
      color: Colors.grey,
      margin: const EdgeInsets.all(2),
      child: Center(
        child: Text('$n'),
      )
    );
  }
}

class MapWidget extends StatelessWidget {
  const MapWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Tile(index));
  }
}