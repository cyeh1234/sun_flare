import 'package:sun_flare/data/services/nasa_service.dart';
import 'package:sun_flare/domain/entities/solar_flare.dart';
import 'package:sun_flare/domain/repos/solar_flare_repo.dart';
import 'package:sun_flare/data/entities/solar_flare_dto.dart';

class SolarFlareRepoImpl extends SolarFlareRepo {
  final NasaService _nasaService;

  SolarFlareRepoImpl(this._nasaService);

  @override
  Future<List<SolarFlare>> getFlares({DateTime from, DateTime to}) async {
    final res = await _nasaService.getFlares(from, to);
    return res.map((e) => e.toModel()).toList();
  }
}
