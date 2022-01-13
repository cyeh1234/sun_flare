import 'package:sun_flare/domain/repos/geo_storm_repo.dart';
import 'package:sun_flare/domain/repos/solar_flare_repo.dart';
import 'package:sun_flare/data/repos/geo_storm_repo.dart';
import 'package:sun_flare/data/repos/solar_flare_repo.dart';
import 'package:sun_flare/data/services/nasa_service.dart';

class RepoModule {
  static GeoStormRepo _geoStormRepo;
  static SolarFlareRepo _solarFlareRepo;

  static NasaService _nasaService = NasaService();

  static GeoStormRepo geoStormRepo() {
    if (_geoStormRepo == null) {
      _geoStormRepo = GeoStormRepoImpl(_nasaService);
    }
    return _geoStormRepo;
  }

  static SolarFlareRepo solarFlareRepo() {
    if (_solarFlareRepo == null) {
      _solarFlareRepo = SolarFlareRepoImpl(_nasaService);
    }
    return _solarFlareRepo;
  }
}
