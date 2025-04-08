// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seed_calculation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SeedCalculationController on _SeedCalculationController, Store {
  Computed<int>? _$qntVarietiesComputed;

  @override
  int get qntVarieties =>
      (_$qntVarietiesComputed ??= Computed<int>(() => super.qntVarieties,
              name: '_SeedCalculationController.qntVarieties'))
          .value;

  late final _$varietiesAtom =
      Atom(name: '_SeedCalculationController.varieties', context: context);

  @override
  ObservableList<dynamic> get varieties {
    _$varietiesAtom.reportRead();
    return super.varieties;
  }

  @override
  set varieties(ObservableList<dynamic> value) {
    _$varietiesAtom.reportWrite(value, super.varieties, () {
      super.varieties = value;
    });
  }

  late final _$getAllvarietiesAsyncAction = AsyncAction(
      '_SeedCalculationController.getAllvarieties',
      context: context);

  @override
  Future getAllvarieties() {
    return _$getAllvarietiesAsyncAction.run(() async => super.getAllvarieties());
  }

  late final _$_SeedCalculationControllerActionController =
      ActionController(name: '_SeedCalculationController', context: context);

  @override
  void addVariety(Variety variety) {
    final _$actionInfo = _$_SeedCalculationControllerActionController
        .startAction(name: '_SeedCalculationController.addVariety');
    try {
      return super.addVariety(variety);
    } finally {
      _$_SeedCalculationControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
varieties: ${varieties},
qntVarieties: ${qntVarieties}
    ''';
  }
}
