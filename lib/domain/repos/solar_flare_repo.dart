import 'package:meta/meta.dart';
import 'package:sun_flare/domain/entities/solar_flare.dart';

abstract class SolarFlareRepo {
  Future<List<SolarFlare>> getFlares({
    @required DateTime from,
    @required DateTime to,
  });
}