// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AreaStore on _AreaStore, Store {
  late final _$listAreasAtom =
      Atom(name: '_AreaStore.listAreas', context: context);

  @override
  ObservableList<dynamic> get listAreas {
    _$listAreasAtom.reportRead();
    return super.listAreas;
  }

  @override
  set listAreas(ObservableList<dynamic> value) {
    _$listAreasAtom.reportWrite(value, super.listAreas, () {
      super.listAreas = value;
    });
  }

  @override
  String toString() {
    return '''
listAreas: ${listAreas}
    ''';
  }
}
