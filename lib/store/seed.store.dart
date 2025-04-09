
import 'package:mobx/mobx.dart';
import 'package:seedcalc/models/variety.dart';

class SeedStore = _SeedStore with _$SeedStore;

abstract class _SeedStore with Store{

  @observable
  ObservableList varieties = ObservableList();

  @computed
  int get qntVarieties => varieties.length;


  @action
  void addVariety(Variety variety){
    varieties.add(variety);
  }

  @action
  void removeVariety(Variety variety){
    varieties.removeWhere((v) => v.id == variety.id);
  }

  @action
  void editeVariety(Variety variety){
    int i = varieties.indexOf(variety);
    varieties[i] = variety;
  }
  
}