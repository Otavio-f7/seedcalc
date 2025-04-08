import 'package:mobx/mobx.dart';
import 'package:seedcalc/models/variety.dart';
import 'package:seedcalc/services/i_variety_service.dart';

part 'seed_calculation_controller.g.dart';

class SeedCalculationController = _SeedCalculationController with _$SeedCalculationController;

abstract class _SeedCalculationController with Store{

  IVarietyService service = IVarietyService();

  @observable
  ObservableList varieties = ObservableList();

  @computed
  int get qntVarieties => varieties.length;

  @action
  void getAllvarieties() async {
    List<Variety> list = await service.allVariety();
    varieties.addAll(list);
  }

  @action
  void addVariety(Variety variety){
    service.saveVariety(variety);
    varieties.add(variety);
  }
  
}