import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:marvel/config/config.dart';
import 'package:marvel/dtos/character.dart';
import 'package:marvel/models/criteria.dart';
import 'package:marvel/models/operation_result.dart';
import 'package:quiver/strings.dart';

class Api {

  static Future<OperationResult<List<Character>>> fetchCharacters(Criteria criteria) async {

      var url = "${Config.api_url}/characters?apikey=${Config.api_key}&limit=${criteria.limit}&offset=${criteria.offset}";

      if(!isBlank(criteria.nameStartWith)) {
            url += "&nameStartsWith=${criteria.nameStartWith}";
      }

      var response = await http.get(url, headers: _getHeaders());
      var data = json.decode(response.body) as Map;
      var code = data["code"] as int;

      try {

        switch(code) {
          case 200:
              var d = data["data"];
              var results = d["results"] as List<dynamic>;
              var list = results.map((item) => Character.fromJson(json.encode(item))).toList();
              return OperationResult.asSuccess(list);
          case 409:
            return OperationResult.asError(ClientException(data["status"]));
          break;
        }
      }
      catch(e) {
          return OperationResult.asError(ClientException(e.toString()));
      }
  }

   static Map<String, String> _getHeaders() {
     return {"Accept": "*/*", "Content-Type": "application/json; charset=utf-8", "Referer" : Config.referer };
   }
}