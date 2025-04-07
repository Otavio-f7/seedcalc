import 'package:flutter/material.dart';

class SeedCalcScreen extends StatelessWidget {
  const SeedCalcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 10,
          children: [
            Icon(
              Icons.local_florist_outlined, 
              color: Theme.of(context).colorScheme.primary, 
              size: 30,
            ),
            Text(
              'SeedCalc', 
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary, 
                fontSize: 30, 
                fontWeight: FontWeight.bold
              )
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Card(
            color: Theme.of(context).colorScheme.secondary,
            child: ListTile(
              leading: Icon(Icons.grain, color: Colors.white,),
              title: Text('Area 1'),
              subtitle: Text('Milho DARAX'),
              trailing: Text('60 TON'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_to_photos_rounded),
      ),
    );
  }
}
