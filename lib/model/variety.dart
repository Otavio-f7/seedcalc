class Variety {
  final int population;
  final double  thousandSeedWeight;
  final double germinationRate;

  Variety({
    required this.population, 
    required this.thousandSeedWeight, 
    required this.germinationRate
  });

  factory Variety.fromJson(Map<String, dynamic> json){
    return Variety(
      population: int.parse(json['population']), 
      thousandSeedWeight: double.parse(json['thousandSeedWeight']), 
      germinationRate: double.parse(json['germinationRate']),
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'population' : population,
      'thousandSeedWeight' : thousandSeedWeight,
      'germinationRate' : germinationRate,
    };
  }
  
}