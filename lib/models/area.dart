class Area {
  final int lineSpacing; // in centimeters
  final int squareMeters;

  Area({
    required this.lineSpacing, 
    required this.squareMeters
  });

  factory Area.fromJson(Map<String, dynamic> json){
    return Area(
      lineSpacing: int.parse(json['lineSpacing']), 
      squareMeters: int.parse(json['squareMeters']),
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'lineSpacing' : lineSpacing,
      'squareMeters' : squareMeters,
    };
  }
}