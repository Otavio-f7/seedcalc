class Area {
  final int lineSpacing; // in centimeters
  final int squareMeters;
  final int variety_id;

  Area({
    required this.lineSpacing, 
    required this.squareMeters,
    required this.variety_id,
  });

  factory Area.fromJson(Map<String, dynamic> json){
    return Area(
      lineSpacing: int.parse(json['lineSpacing']), 
      squareMeters: int.parse(json['squareMeters']),
      variety_id: int.parse(json['variety_id']),
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'lineSpacing' : lineSpacing,
      'squareMeters' : squareMeters,
      'variety_id' : variety_id,
    };
  }
}