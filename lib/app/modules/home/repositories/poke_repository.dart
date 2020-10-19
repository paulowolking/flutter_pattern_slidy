import 'package:dio/dio.dart';
import 'package:flutter_pattern_slidy/app/modules/home/models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository(this.dio);

  Future<List<PokemoModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');
    List<PokemoModel> list = [];

    for (var json in (response.data['results'] as List)) {
      PokemoModel pokemoModel = PokemoModel(name: json['name']);
      list.add(pokemoModel);
    }

    return list;
  }
}
