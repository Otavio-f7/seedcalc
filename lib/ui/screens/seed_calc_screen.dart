import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:seedcalc/controllers/seed_calculation_controller.dart';
import 'package:seedcalc/models/variety.dart';
import 'package:seedcalc/ui/widgets/seed_calc_item.dart';

class SeedCalcScreen extends StatefulWidget {
  const SeedCalcScreen({super.key});

  @override
  State<SeedCalcScreen> createState() => _SeedCalcScreenState();
}

class _SeedCalcScreenState extends State<SeedCalcScreen> {
  @override
  void initState() {
    Provider.of<SeedCalculationController>(context, listen: false).getAllvarieties();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SeedCalculationController>(context);
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
      body: Observer(
        builder: (context) {
          return ListView.builder(
            itemCount: controller.qntVarieties,
            itemBuilder: (ctx, i)=> SeedCalcItem(
              variety: controller.varieties[i]
            )
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.addVariety(Variety(id: 22,name: 'Milho 3',population: 1, thousandSeedWeight: 1, germinationRate: 1));
          print(controller.varieties);
        },
        child: Icon(Icons.add_to_photos_rounded),
      ),
    );
  }
}
