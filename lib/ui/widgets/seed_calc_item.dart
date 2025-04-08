import 'package:flutter/material.dart';
import 'package:seedcalc/models/variety.dart';

class SeedCalcItem extends StatelessWidget {
  final Variety variety;
  const SeedCalcItem({super.key, required this.variety});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondary,
      child: ListTile(
        leading: Icon(Icons.grain, color: Colors.white,),
        title: Text(variety.name),
        subtitle: Text('Germinação ${variety.germinationRate*100} %'),
        trailing: Text('População ${variety.population}'),
      ),
    );
  }
}