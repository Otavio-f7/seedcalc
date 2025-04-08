class Variety {
  final int id;
  final String name;
  final int population;
  final double  thousandSeedWeight;
  final double germinationRate;

  Variety({
    required this.id,
    required this.name,
    required this.population, 
    required this.thousandSeedWeight, 
    required this.germinationRate
  });

  factory Variety.fromJson(Map<String, dynamic> json){
    return Variety(
      id: int.parse(json['id']), 
      name: json['name'].toString(), 
      population: int.parse(json['population']), 
      thousandSeedWeight: double.parse(json['thousandSeedWeight']), 
      germinationRate: double.parse(json['germinationRate']),
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'id' : id,
      'name' : name,
      'population' : population,
      'thousandSeedWeight' : thousandSeedWeight,
      'germinationRate' : germinationRate,
    };
  }
  
}