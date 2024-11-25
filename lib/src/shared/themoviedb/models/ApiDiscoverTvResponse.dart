import 'dart:convert';
/// page : 1
/// results : [{"adult":false,"backdrop_path":"/jWXrQstj7p3Wl5MfYWY6IHqRpDb.jpg","genre_ids":[10763],"id":94722,"origin_country":["DE"],"original_language":"de","original_name":"Tagesschau","overview":"German daily news program, the oldest still existing program on German television.","popularity":2574.553,"poster_path":"/7dFZJ2ZJJdcmkp05B9NWlqTJ5tq.jpg","first_air_date":"1952-12-26","name":"Tagesschau","vote_average":6.654,"vote_count":214},{"adult":false,"backdrop_path":"/q8eejQcg1bAqImEV8jh8RtBD4uH.jpg","genre_ids":[16,10765,10759,9648],"id":94605,"origin_country":["US"],"original_language":"en","original_name":"Arcane","overview":"Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.","popularity":2437.141,"poster_path":"/abf8tHznhSvl9BAElD2cQeRr7do.jpg","first_air_date":"2021-11-06","name":"Arcane","vote_average":8.77,"vote_count":4323},{"adult":false,"backdrop_path":"/q3UGWifvIpdey1T2efX4dSmbZpU.jpg","genre_ids":[9648,18,10765],"id":124364,"origin_country":["US"],"original_language":"en","original_name":"FROM","overview":"Unravel the mystery of a nightmarish town in middle America that traps all those who enter. As the unwilling residents fight to keep a sense of normalcy and search for a way out, they must also survive the threats of the surrounding forest – including the terrifying creatures that come out when the sun goes down.","popularity":2435.809,"poster_path":"/cjXLrg4R7FRPFafvuQ3SSznQOd9.jpg","first_air_date":"2022-02-20","name":"FROM","vote_average":8.189,"vote_count":1476},{"adult":false,"backdrop_path":"/zUBbIcKnzw5MZqfc6Q8rlRdC6zX.jpg","genre_ids":[10762,10751],"id":38715,"origin_country":["NL"],"original_language":"nl","original_name":"Sinterklaasjournaal","overview":"","popularity":2324.132,"poster_path":"/thOkUNMen2b4KJKeH2k02jNCcI2.jpg","first_air_date":"2001-01-01","name":"Sinterklaasjournaal","vote_average":7.7,"vote_count":3},{"adult":false,"backdrop_path":"/kvQE5pvZZWCIQ0uAQvzRmQO3nZM.jpg","genre_ids":[10764],"id":231344,"origin_country":["US"],"original_language":"es","original_name":"Los 50","overview":"Fifty TV stars are single handedly picked by a mysterious, masked Lion to participate in a competition like no other. Living together in an exotic country mansion and competing against each other in a relentless and unpredictable game, the stars must face challenges posed by the game master while making alliances and developing strategies to avoid elimination.","popularity":2278.386,"poster_path":"/5u4lYLk0kDf6XTUIENhXkaUV2jQ.jpg","first_air_date":"2023-07-18","name":"Los 50","vote_average":7.444,"vote_count":18},{"adult":false,"backdrop_path":"/j5CR0gFPjwgmAXkV9HGaF4VMjIW.jpg","genre_ids":[10766,18,35],"id":257064,"origin_country":["BR"],"original_language":"pt","original_name":"Volta por Cima","overview":"","popularity":2035.025,"poster_path":"/nyN8R0P1Hqwq7ksJz4O2BIAUd4W.jpg","first_air_date":"2024-09-30","name":"Volta por Cima","vote_average":5.3,"vote_count":3},{"adult":false,"backdrop_path":"/9Gj33rlZRbBkuPUTrjPJbmtlEBa.jpg","genre_ids":[10764],"id":108466,"origin_country":["NO"],"original_language":"no","original_name":"Alle mot alle","overview":"","popularity":2009.376,"poster_path":"/qmOYqF2ezHT1leCE91Mdm6tu3Vl.jpg","first_air_date":"2020-08-31","name":"Alle mot alle","vote_average":8.0,"vote_count":1},{"adult":false,"backdrop_path":"/tPLUHT2cQYJi66aSZZ1qrcu74Zq.jpg","genre_ids":[10766,18],"id":257048,"origin_country":["BR"],"original_language":"pt","original_name":"Garota do Momento","overview":"","popularity":2003.306,"poster_path":"/jFSkjQSZ5Td52igalpoTQRuHtk.jpg","first_air_date":"2024-11-04","name":"Garota do Momento","vote_average":10.0,"vote_count":1},{"adult":false,"backdrop_path":"/ookJ1LS8Uc0ji7cSDuJfV7Qh6Lb.jpg","genre_ids":[10764],"id":18770,"origin_country":["ES"],"original_language":"es","original_name":"Gran Hermano","overview":"Gran Hermano is a reality television series broadcast in Spain on Telecinco and La Siete produced by Endemol. It is part of the Big Brother franchise first developed in the Netherlands. As of February 2012, 19 editions of the show have aired.","popularity":1911.378,"poster_path":"/gQ0Emh2LT047Fip2HWye3NkrkQB.jpg","first_air_date":"2000-04-23","name":"Gran Hermano","vote_average":4.0,"vote_count":9},{"adult":false,"backdrop_path":"/9zIqN0oMmaeFvBlccgw80sWed7I.jpg","genre_ids":[10763,35],"id":13008,"origin_country":["US"],"original_language":"en","original_name":"TMZ","overview":"Based on the popular gossip website, this entertainment newsmagazine delivers daily updates on Hollywood's rich, beautiful and screwed-up. The program often shows highlights of the day's staff meeting during which reporters pitch ideas for stories to air that day.","popularity":1898.782,"poster_path":"/ifFpUG51DJaQxwnZ35VwoGRFGGv.jpg","first_air_date":"2007-09-10","name":"TMZ","vote_average":2.8,"vote_count":8},{"adult":false,"backdrop_path":"/A56TTynkj0zEOBHDPLe5IN4olv.jpg","genre_ids":[10765,10759],"id":274816,"origin_country":["CN"],"original_language":"zh","original_name":"叶罗丽梦奇境","overview":"At the edge of reality lies Yeluo Li Wonderland, a magical realm where fairies once lived in harmony with nature. Now, human environmental destruction threatens this balance, and the realm’s queen, Mandora, plans to use the power of dreams to invade and reshape the human world.","popularity":1748.7,"poster_path":"/oybLPEQ5wtcRQzVwuMgz1FsJS3K.jpg","first_air_date":"2024-11-04","name":"叶罗丽梦奇境","vote_average":0.0,"vote_count":0},{"adult":false,"backdrop_path":"/ohJTnu93hJ0Uonl86Wn3mOSlWXN.jpg","genre_ids":[10751,35,18],"id":91759,"origin_country":["HK"],"original_language":"cn","original_name":"愛·回家之開心速遞","overview":"Hung Sue Gan starting from the bottom, established his own logistics company, which is now running smoothly. His only concern now are his three daughters. His eldest daughter has immigrated overseas. His second daughter Hung Yeuk Shui has reached the marriageable age, but has no hopes for marriage anytime soon. She is constantly bickering with her younger sister Hung Sum Yue, who is an honour student, over trivial matters, causing their father to not know whether to laugh or cry. Hung Sue Yan, Hung Sue Gan's brother, moves in with the family, temporarily ending his life as a nomadic photographer. He joins Hung Yeuk Shui's company and encounters Ko Pak Fei, the director of an online shop. The two appear to be former lovers, making for lots of laughter. Since Hung Sue Yan moved in, a series of strange events have occurred in the family. Upon investigation, the source is traced to Lung Ging Fung, a promising young man who is the son of department store mogul Lung Gam Wai.","popularity":1739.818,"poster_path":"/lgD4j9gUGmMckZpWWRJjorWqGVT.jpg","first_air_date":"2017-02-06","name":"Come Home Love: Lo and Behold","vote_average":5.1,"vote_count":38},{"adult":false,"backdrop_path":null,"genre_ids":[],"id":274136,"origin_country":["CZ"],"original_language":"cs","original_name":"Stardance XIII ...kolem dokola","overview":"","popularity":1739.144,"poster_path":"/iJPk8DSr2NVpfeFxembWxROqQNW.jpg","first_air_date":"2024-10-14","name":"Stardance XIII ...kolem dokola","vote_average":8.0,"vote_count":2},{"adult":false,"backdrop_path":"/yEamRf8CDfCAoYWhi6L5E4CWQab.jpg","genre_ids":[10763,10764,10767],"id":275474,"origin_country":["DE"],"original_language":"de","original_name":"rbb24 Brandenburg aktuell","overview":"","popularity":1725.37,"poster_path":"/9pNCx8pkxxcyJOYAgtCZjrQeSGX.jpg","first_air_date":"1992-05-02","name":"rbb24 Brandenburg aktuell","vote_average":6.0,"vote_count":1},{"adult":false,"backdrop_path":"/vgeDRVpSUa4Hvovg4C6dgm4dfUW.jpg","genre_ids":[10766,18],"id":112470,"origin_country":["FR"],"original_language":"fr","original_name":"Ici tout commence","overview":"This television drama series is centered around the prestigious culinary school of renowned chef Auguste Armand. The show follows the lives of students and staff as they navigate the challenges and pressures of the culinary world—delving into their personal and professional lives, revealing secrets, rivalries, and complex relationships.","popularity":1705.123,"poster_path":"/yuTHx38jpogXovMhqNatvozigMJ.jpg","first_air_date":"2020-11-02","name":"Ici tout commence","vote_average":6.664,"vote_count":64},{"adult":false,"backdrop_path":"/xeJJZE8yC09lRbiV2f2hqURJmhd.jpg","genre_ids":[10766,18,9648],"id":237478,"origin_country":["BR"],"original_language":"pt","original_name":"Mania de Você","overview":"The story begins with the ambiguous relationship between friends Viola and Luma, who seem predestined to literally enter each other's lives. Born on the same day, in very different situations, they meet years later, united by coincidences that go beyond their birthday. From humble origins, Viola moves with her boyfriend Mavi to Angra dos Reis, where Luma lives a luxurious life and dates Rudá, who ends up meeting Viola by chance. Thus begins the duo's journey, which goes from a passion for recipes to an obsession with the same man, from the immediate connection to the point of starting to live their friend’s reality, 10 years later. A journey divided between complicity and rivalry, which includes them in a love quadrangle and is impacted by a series of circumstances, twists and surprises, such as the secret surrounding a murder.","popularity":1697.408,"poster_path":"/xq1X6H8pupwx0jeZpu4Piq0V5uL.jpg","first_air_date":"2024-09-09","name":"Crazy About You","vote_average":5.5,"vote_count":2},{"adult":false,"backdrop_path":"/skiuEBlxEC8qCk6nLR6fJvSM1JT.jpg","genre_ids":[35,18,10751,10762,10759],"id":247885,"origin_country":["MX","US"],"original_language":"en","original_name":"Papás por Conveniencia","overview":"Tino, a single father who faces great challenges in raising his two children, finds out one day that he is also the father of two rebellious teenagers, children of Aidé, a former high school classmate who has become an important businesswoman. For Tino, this news becomes an opportunity to take on the role of father of the children he never knew he had. Thus, he begins to work at Aidé's company, but everything gets complicated when Tino and his family move into Aidé's house to integrate into her new life. The house becomes a battlefield, both of their children have problems adapting, and love resurfaces between Tino and Aidé and a torrid romance begins. But building this new life for Aidé, Tino and their children will not be easy; they will have to face serious obstacles, always supported by the strength of their love and that of their children.","popularity":1598.548,"poster_path":"/y7yIu9PKx2WTphhYgbBq9C1RNzV.jpg","first_air_date":"2024-10-21","name":"Papás por Conveniencia","vote_average":7.923,"vote_count":13},{"adult":false,"backdrop_path":"/rotcih1fY3UOYejNbiTmz36og12.jpg","genre_ids":[18,10751],"id":242722,"origin_country":["IN"],"original_language":"hi","original_name":"श्रीमद् रामायण","overview":"Shrimad Ramayan is an ambitious television series that brings to life the timeless epic, the Ramayan, with a deep commitment to authenticity, cultural reverence and a contemporary sensibility.","popularity":1572.154,"poster_path":"/aCDK83ykQYnQGFOTfiLjnoqXv1b.jpg","first_air_date":"2024-01-22","name":"Shrimad Ramayan","vote_average":7.8,"vote_count":4},{"adult":false,"backdrop_path":"/4i3iJepkqqH5JJgTNLJdi8ke6ir.jpg","genre_ids":[10766],"id":249010,"origin_country":["ZA"],"original_language":"af","original_name":"Kelders van Geheime","overview":"Kelders van Geheime (Cellars of Secrets) is a South African, Afrikaans-language telenovela based on the wheeling's and dealings of the community that lives on Soebatskloof (a wine farm in the Cape). The series focuses on three families: the Abrahams, Syster and Marais households. These families will have to stand together, agree (or agree to disagree), and work together to earn their bread and butter – and a glass of wine.","popularity":1534.995,"poster_path":"/vf1I0G5jICTstI1EXxb9Oqq80TU.jpg","first_air_date":"2024-05-06","name":"Kelders van Geheime","vote_average":6.375,"vote_count":8},{"adult":false,"backdrop_path":"/mLcD1v4sfoa1juOsBat7Vik7wEe.jpg","genre_ids":[10764],"id":248890,"origin_country":["ZA"],"original_language":"en","original_name":"Ready Steady Cook South Africa","overview":"In Ready Steady Cook, two teams - a Red Tomato and a Green Pepper - compete in a Red Kitchen and a Green Kitchen, together with a South African chef on each side and paired with enthusiastic home cooks, as they are challenged creatively with a mystery bag of ingredients in a 20-minute cook-off.","popularity":1518.686,"poster_path":"/30xX4IMbgnMbQwo76xM4BOSokZO.jpg","first_air_date":"2024-03-18","name":"Ready Steady Cook South Africa","vote_average":2.1,"vote_count":4}]
/// total_pages : 9321
/// total_results : 186401
enum ApiShowTypes { movie, tv ,collection }

ApiDiscoverTvResponse apiDiscoverTvResponseFromJson(String str) => ApiDiscoverTvResponse.fromJson(json.decode(str));
String apiDiscoverTvResponseToJson(ApiDiscoverTvResponse data) => json.encode(data.toJson());
class ApiDiscoverTvResponse {
  ApiDiscoverTvResponse({
      num? page, 
      List<TvShowResults>? results, 
      num? totalPages, 
      num? totalTvShowResults,}){
    _page = page;
    _results = results;
    _totalPages = totalPages;
    _totalTvShowResults = totalTvShowResults;
}

  ApiDiscoverTvResponse.fromJson(dynamic json,{ApiShowTypes? showType}) {
    _page = json['page'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(TvShowResults.fromJson(v,showType: showType));
      });
    }
    _totalPages = json['total_pages'];
    _totalTvShowResults = json['total_results'];
  }
  num? _page;
  List<TvShowResults>? _results;
  num? _totalPages;
  num? _totalTvShowResults;

  num? get page => _page;
  List<TvShowResults>? get results => _results;
  num? get totalPages => _totalPages;
  num? get totalTvShowResults => _totalTvShowResults;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = _page;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = _totalPages;
    map['total_results'] = _totalTvShowResults;
    return map;
  }

}

/// adult : false
/// backdrop_path : "/jWXrQstj7p3Wl5MfYWY6IHqRpDb.jpg"
/// genre_ids : [10763]
/// id : 94722
/// origin_country : ["DE"]
/// original_language : "de"
/// original_name : "Tagesschau"
/// overview : "German daily news program, the oldest still existing program on German television."
/// popularity : 2574.553
/// poster_path : "/7dFZJ2ZJJdcmkp05B9NWlqTJ5tq.jpg"
/// first_air_date : "1952-12-26"
/// name : "Tagesschau"
/// vote_average : 6.654
/// vote_count : 214

TvShowResults resultsFromJson(String str) => TvShowResults.fromJson(json.decode(str));
String resultsToJson(TvShowResults data) => json.encode(data.toJson());
class TvShowResults {
  TvShowResults({
      bool? adult, 
      String? backdropPath, 
      List<num>? genreIds, 
      num? id, 
      List<String>? originCountry, 
      String? originalLanguage, 
      String? originalName, 
      String? overview, 
      num? popularity, 
      String? posterPath, 
      String? firstAirDate, 
      String? name, 
      num? voteAverage,
    ApiShowTypes? apiShowType,
      num? voteCount,}){
    _adult = adult;
    _backdropPath = backdropPath;
    _genreIds = genreIds;
    _id = id;
    _originCountry = originCountry;
    _originalLanguage = originalLanguage;
    _originalName = originalName;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _firstAirDate = firstAirDate;
    _apiShowType = apiShowType;
    _name = name;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
}

  TvShowResults.fromJson(dynamic json,{ApiShowTypes? showType}) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
    _id = json['id'];
    _originCountry = json['origin_country'] != null ? json['origin_country'].cast<String>() : [];
    _originalLanguage = json['original_language'];
    _originalName = json['original_name']??json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _firstAirDate = json['first_air_date'];
    _name = json['name'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
    _apiShowType= mapToShowType(json['media_type'],showType: showType);
  }
  bool? _adult;
  String? _backdropPath;
  List<num>? _genreIds;
  num? _id;
  List<String>? _originCountry;
  String? _originalLanguage;
  ApiShowTypes? _apiShowType;
  String? _originalName;
  String? _overview;
  num? _popularity;
  String? _posterPath;
  String? _firstAirDate;
  String? _name;
  num? _voteAverage;
  num? _voteCount;

  bool? get adult => _adult;
  String? get backdropPath => _backdropPath;
  List<num>? get genreIds => _genreIds;
  num? get id => _id;
  List<String>? get originCountry => _originCountry;
  String? get originalLanguage => _originalLanguage;
  String? get originalName => _originalName;
  String? get overview => _overview;
  num? get popularity => _popularity;
  String? get posterPath => _posterPath;
  String? get image => "https://image.tmdb.org/t/p/w500$_posterPath" ;
  String? get firstAirDate => _firstAirDate;
  String? get name => _name;
  String? get urlPath => 'https://api.themoviedb.org/3/tv/$id';
  String? get theMovieDBId => id.toString();
  ApiShowTypes? get apiShowType => _apiShowType;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    map['genre_ids'] = _genreIds;
    map['id'] = _id;
    map['origin_country'] = _originCountry;
    map['original_language'] = _originalLanguage;
    map['original_name'] = _originalName;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['first_air_date'] = _firstAirDate;
    map['name'] = _name;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }

 ApiShowTypes? mapToShowType(json,{ApiShowTypes? showType}) {
    if(json=='tv'){
      return ApiShowTypes.tv;
    }
    if(json=='movie'){
      return ApiShowTypes.movie;
    }

    return showType;
 }

}