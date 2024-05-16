class WeatherModel {
  WeatherModel({
    Coord? coord,
    List<Weather>? weather,
    String? base,
    Main? main,
    num? visibility,
    Wind? wind,
    Rain? rain,
    Clouds? clouds,
    num? dt,
    Sys? sys,
    num? timezone,
    num? id,
    String? name,
    num? cod,
  }) {
    _coord = coord;
    _weather = weather;
    _base = base;
    _main = main;
    _visibility = visibility;
    _wind = wind;
    _rain = rain;
    _clouds = clouds;
    _dt = dt;
    _sys = sys;
    _timezone = timezone;
    _id = id;
    _name = name;
    _cod = cod;
  }

  WeatherModel.fromJson(dynamic json) {
    _coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _base = json['base'];
    _main = json['main'] != null ? Main.fromJson(json['main']) : null;
    _visibility = json['visibility'];
    _wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    _rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    _clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    _dt = json['dt'];
    _sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    _timezone = json['timezone'];
    _id = json['id'];
    _name = json['name'];
    _cod = json['cod'];
  }

  Coord? _coord;
  List<Weather>? _weather;
  String? _base;
  Main? _main;
  num? _visibility;
  Wind? _wind;
  Rain? _rain;
  Clouds? _clouds;
  num? _dt;
  Sys? _sys;
  num? _timezone;
  num? _id;
  String? _name;
  num? _cod;

  Coord? get coord => _coord;

  List<Weather>? get weather => _weather;

  String? get base => _base;

  Main? get main => _main;

  num? get visibility => _visibility;

  Wind? get wind => _wind;

  Rain? get rain => _rain;

  Clouds? get clouds => _clouds;

  num? get dt => _dt;

  Sys? get sys => _sys;

  num? get timezone => _timezone;

  num? get id => _id;

  String? get name => _name;

  num? get cod => _cod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_coord != null) {
      map['coord'] = _coord?.toJson();
    }
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['base'] = _base;
    if (_main != null) {
      map['main'] = _main?.toJson();
    }
    map['visibility'] = _visibility;
    if (_wind != null) {
      map['wind'] = _wind?.toJson();
    }
    if (_rain != null) {
      map['rain'] = _rain?.toJson();
    }
    if (_clouds != null) {
      map['clouds'] = _clouds?.toJson();
    }
    map['dt'] = _dt;
    if (_sys != null) {
      map['sys'] = _sys?.toJson();
    }
    map['timezone'] = _timezone;
    map['id'] = _id;
    map['name'] = _name;
    map['cod'] = _cod;
    return map;
  }
}

class Sys {
  Sys({
    num? type,
    num? id,
    String? country,
    num? sunrise,
    num? sunset,
  }) {
    _type = type;
    _id = id;
    _country = country;
    _sunrise = sunrise;
    _sunset = sunset;
  }

  Sys.fromJson(dynamic json) {
    _type = json['type'];
    _id = json['id'];
    _country = json['country'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
  }

  num? _type;
  num? _id;
  String? _country;
  num? _sunrise;
  num? _sunset;

  num? get type => _type;

  num? get id => _id;

  String? get country => _country;

  num? get sunrise => _sunrise;

  num? get sunset => _sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['id'] = _id;
    map['country'] = _country;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    return map;
  }
}

class Clouds {
  Clouds({
    num? all,
  }) {
    _all = all;
  }

  Clouds.fromJson(dynamic json) {
    _all = json['all'];
  }

  num? _all;

  num? get all => _all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all'] = _all;
    return map;
  }
}

class Rain {
  Rain({
    num? h,
  }) {
    _h = h;
  }

  Rain.fromJson(dynamic json) {
    _h = json['1h'];
  }

  num? _h;

  num? get h => _h;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['1h'] = _h;
    return map;
  }
}

class Wind {
  Wind({
    num? speed,
    num? deg,
  }) {
    _speed = speed;
    _deg = deg;
  }

  Wind.fromJson(dynamic json) {
    _speed = json['speed'];
    _deg = json['deg'];
  }

  num? _speed;
  num? _deg;

  num? get speed => _speed;

  num? get deg => _deg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = _speed;
    map['deg'] = _deg;
    return map;
  }
}

class Main {
  Main({
    num? temp,
    num? feelsLike,
    num? tempMin,
    num? tempMax,
    num? pressure,
    num? humidity,
  }) {
    _temp = temp;
    _feelsLike = feelsLike;
    _tempMin = tempMin;
    _tempMax = tempMax;
    _pressure = pressure;
    _humidity = humidity;
  }

  Main.fromJson(dynamic json) {
    _temp = json['temp'];
    _feelsLike = json['feels_like'];
    _tempMin = json['temp_min'];
    _tempMax = json['temp_max'];
    _pressure = json['pressure'];
    _humidity = json['humidity'];
  }

  num? _temp;
  num? _feelsLike;
  num? _tempMin;
  num? _tempMax;
  num? _pressure;
  num? _humidity;

  num? get temp => _temp;

  num? get feelsLike => _feelsLike;

  num? get tempMin => _tempMin;

  num? get tempMax => _tempMax;

  num? get pressure => _pressure;

  num? get humidity => _humidity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = _temp;
    map['feels_like'] = _feelsLike;
    map['temp_min'] = _tempMin;
    map['temp_max'] = _tempMax;
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    return map;
  }
}

class Weather {
  Weather({
    num? id,
    String? main,
    String? description,
    String? icon,
  }) {
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
  }

  Weather.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }

  num? _id;
  String? _main;
  String? _description;
  String? _icon;

  num? get id => _id;

  String? get main => _main;

  String? get description => _description;

  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }
}

class Coord {
  Coord({
    num? lon,
    num? lat,
  }) {
    _lon = lon;
    _lat = lat;
  }

  Coord.fromJson(dynamic json) {
    _lon = json['lon'];
    _lat = json['lat'];
  }

  num? _lon;
  num? _lat;

  num? get lon => _lon;

  num? get lat => _lat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lon'] = _lon;
    map['lat'] = _lat;
    return map;
  }
}


//
// class WeatherModel {
//   Location? _location;
//   Current? _current;
//
//   WeatherModel({Location? location, Current? current}) {
//     if (location != null) {
//       this._location = location;
//     }
//     if (current != null) {
//       this._current = current;
//     }
//   }
//
//   Location? get location => _location;
//   set location(Location? location) => _location = location;
//   Current? get current => _current;
//   set current(Current? current) => _current = current;
//
//   WeatherModel.fromJson(Map<String, dynamic> json) {
//     _location = json['location'] != null
//         ? new Location.fromJson(json['location'])
//         : null;
//     _current =
//     json['current'] != null ? new Current.fromJson(json['current']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this._location != null) {
//       data['location'] = this._location!.toJson();
//     }
//     if (this._current != null) {
//       data['current'] = this._current!.toJson();
//     }
//     return data;
//   }
// }
//
// class Location {
//   String? _name;
//   String? _region;
//   String? _country;
//   double? _lat;
//   double? _lon;
//   String? _tzId;
//   int? _localtimeEpoch;
//   String? _localtime;
//
//   Location(
//       {String? name,
//         String? region,
//         String? country,
//         double? lat,
//         double? lon,
//         String? tzId,
//         int? localtimeEpoch,
//         String? localtime}) {
//     if (name != null) {
//       this._name = name;
//     }
//     if (region != null) {
//       this._region = region;
//     }
//     if (country != null) {
//       this._country = country;
//     }
//     if (lat != null) {
//       this._lat = lat;
//     }
//     if (lon != null) {
//       this._lon = lon;
//     }
//     if (tzId != null) {
//       this._tzId = tzId;
//     }
//     if (localtimeEpoch != null) {
//       this._localtimeEpoch = localtimeEpoch;
//     }
//     if (localtime != null) {
//       this._localtime = localtime;
//     }
//   }
//
//   String? get name => _name;
//   set name(String? name) => _name = name;
//   String? get region => _region;
//   set region(String? region) => _region = region;
//   String? get country => _country;
//   set country(String? country) => _country = country;
//   double? get lat => _lat;
//   set lat(double? lat) => _lat = lat;
//   double? get lon => _lon;
//   set lon(double? lon) => _lon = lon;
//   String? get tzId => _tzId;
//   set tzId(String? tzId) => _tzId = tzId;
//   int? get localtimeEpoch => _localtimeEpoch;
//   set localtimeEpoch(int? localtimeEpoch) => _localtimeEpoch = localtimeEpoch;
//   String? get localtime => _localtime;
//   set localtime(String? localtime) => _localtime = localtime;
//
//   Location.fromJson(Map<String, dynamic> json) {
//     _name = json['name'];
//     _region = json['region'];
//     _country = json['country'];
//     _lat = json['lat'];
//     _lon = json['lon'];
//     _tzId = json['tz_id'];
//     _localtimeEpoch = json['localtime_epoch'];
//     _localtime = json['localtime'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this._name;
//     data['region'] = this._region;
//     data['country'] = this._country;
//     data['lat'] = this._lat;
//     data['lon'] = this._lon;
//     data['tz_id'] = this._tzId;
//     data['localtime_epoch'] = this._localtimeEpoch;
//     data['localtime'] = this._localtime;
//     return data;
//   }
// }
//
// class Current {
//   int? _lastUpdatedEpoch;
//   String? _lastUpdated;
//   int? _tempC;
//   double? _tempF;
//   int? _isDay;
//   Condition? _condition;
//   double? _windMph;
//   double? _windKph;
//   int? _windDegree;
//   String? _windDir;
//   int? _pressureMb;
//   double? _pressureIn;
//   int? _precipMm;
//   int? _precipIn;
//   int? _humidity;
//   int? _cloud;
//   double? _feelslikeC;
//   int? _feelslikeF;
//   int? _visKm;
//   int? _visMiles;
//   int? _uv;
//   double? _gustMph;
//   double? _gustKph;
//
//   Current(
//       {int? lastUpdatedEpoch,
//         String? lastUpdated,
//         int? tempC,
//         double? tempF,
//         int? isDay,
//         Condition? condition,
//         double? windMph,
//         double? windKph,
//         int? windDegree,
//         String? windDir,
//         int? pressureMb,
//         double? pressureIn,
//         int? precipMm,
//         int? precipIn,
//         int? humidity,
//         int? cloud,
//         double? feelslikeC,
//         int? feelslikeF,
//         int? visKm,
//         int? visMiles,
//         int? uv,
//         double? gustMph,
//         double? gustKph}) {
//     if (lastUpdatedEpoch != null) {
//       this._lastUpdatedEpoch = lastUpdatedEpoch;
//     }
//     if (lastUpdated != null) {
//       this._lastUpdated = lastUpdated;
//     }
//     if (tempC != null) {
//       this._tempC = tempC;
//     }
//     if (tempF != null) {
//       this._tempF = tempF;
//     }
//     if (isDay != null) {
//       this._isDay = isDay;
//     }
//     if (condition != null) {
//       this._condition = condition;
//     }
//     if (windMph != null) {
//       this._windMph = windMph;
//     }
//     if (windKph != null) {
//       this._windKph = windKph;
//     }
//     if (windDegree != null) {
//       this._windDegree = windDegree;
//     }
//     if (windDir != null) {
//       this._windDir = windDir;
//     }
//     if (pressureMb != null) {
//       this._pressureMb = pressureMb;
//     }
//     if (pressureIn != null) {
//       this._pressureIn = pressureIn;
//     }
//     if (precipMm != null) {
//       this._precipMm = precipMm;
//     }
//     if (precipIn != null) {
//       this._precipIn = precipIn;
//     }
//     if (humidity != null) {
//       this._humidity = humidity;
//     }
//     if (cloud != null) {
//       this._cloud = cloud;
//     }
//     if (feelslikeC != null) {
//       this._feelslikeC = feelslikeC;
//     }
//     if (feelslikeF != null) {
//       this._feelslikeF = feelslikeF;
//     }
//     if (visKm != null) {
//       this._visKm = visKm;
//     }
//     if (visMiles != null) {
//       this._visMiles = visMiles;
//     }
//     if (uv != null) {
//       this._uv = uv;
//     }
//     if (gustMph != null) {
//       this._gustMph = gustMph;
//     }
//     if (gustKph != null) {
//       this._gustKph = gustKph;
//     }
//   }
//
//   int? get lastUpdatedEpoch => _lastUpdatedEpoch;
//   set lastUpdatedEpoch(int? lastUpdatedEpoch) =>
//       _lastUpdatedEpoch = lastUpdatedEpoch;
//   String? get lastUpdated => _lastUpdated;
//   set lastUpdated(String? lastUpdated) => _lastUpdated = lastUpdated;
//   int? get tempC => _tempC;
//   set tempC(int? tempC) => _tempC = tempC;
//   double? get tempF => _tempF;
//   set tempF(double? tempF) => _tempF = tempF;
//   int? get isDay => _isDay;
//   set isDay(int? isDay) => _isDay = isDay;
//   Condition? get condition => _condition;
//   set condition(Condition? condition) => _condition = condition;
//   double? get windMph => _windMph;
//   set windMph(double? windMph) => _windMph = windMph;
//   double? get windKph => _windKph;
//   set windKph(double? windKph) => _windKph = windKph;
//   int? get windDegree => _windDegree;
//   set windDegree(int? windDegree) => _windDegree = windDegree;
//   String? get windDir => _windDir;
//   set windDir(String? windDir) => _windDir = windDir;
//   int? get pressureMb => _pressureMb;
//   set pressureMb(int? pressureMb) => _pressureMb = pressureMb;
//   double? get pressureIn => _pressureIn;
//   set pressureIn(double? pressureIn) => _pressureIn = pressureIn;
//   int? get precipMm => _precipMm;
//   set precipMm(int? precipMm) => _precipMm = precipMm;
//   int? get precipIn => _precipIn;
//   set precipIn(int? precipIn) => _precipIn = precipIn;
//   int? get humidity => _humidity;
//   set humidity(int? humidity) => _humidity = humidity;
//   int? get cloud => _cloud;
//   set cloud(int? cloud) => _cloud = cloud;
//   double? get feelslikeC => _feelslikeC;
//   set feelslikeC(double? feelslikeC) => _feelslikeC = feelslikeC;
//   int? get feelslikeF => _feelslikeF;
//   set feelslikeF(int? feelslikeF) => _feelslikeF = feelslikeF;
//   int? get visKm => _visKm;
//   set visKm(int? visKm) => _visKm = visKm;
//   int? get visMiles => _visMiles;
//   set visMiles(int? visMiles) => _visMiles = visMiles;
//   int? get uv => _uv;
//   set uv(int? uv) => _uv = uv;
//   double? get gustMph => _gustMph;
//   set gustMph(double? gustMph) => _gustMph = gustMph;
//   double? get gustKph => _gustKph;
//   set gustKph(double? gustKph) => _gustKph = gustKph;
//
//   Current.fromJson(Map<String, dynamic> json) {
//     _lastUpdatedEpoch = json['last_updated_epoch'];
//     _lastUpdated = json['last_updated'];
//     _tempC = json['temp_c'];
//     _tempF = json['temp_f'];
//     _isDay = json['is_day'];
//     _condition = json['condition'] != null
//         ? new Condition.fromJson(json['condition'])
//         : null;
//     _windMph = json['wind_mph'];
//     _windKph = json['wind_kph'];
//     _windDegree = json['wind_degree'];
//     _windDir = json['wind_dir'];
//     _pressureMb = json['pressure_mb'];
//     _pressureIn = json['pressure_in'];
//     _precipMm = json['precip_mm'];
//     _precipIn = json['precip_in'];
//     _humidity = json['humidity'];
//     _cloud = json['cloud'];
//     _feelslikeC = json['feelslike_c'];
//     _feelslikeF = json['feelslike_f'];
//     _visKm = json['vis_km'];
//     _visMiles = json['vis_miles'];
//     _uv = json['uv'];
//     _gustMph = json['gust_mph'];
//     _gustKph = json['gust_kph'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['last_updated_epoch'] = this._lastUpdatedEpoch;
//     data['last_updated'] = this._lastUpdated;
//     data['temp_c'] = this._tempC;
//     data['temp_f'] = this._tempF;
//     data['is_day'] = this._isDay;
//     if (this._condition != null) {
//       data['condition'] = this._condition!.toJson();
//     }
//     data['wind_mph'] = this._windMph;
//     data['wind_kph'] = this._windKph;
//     data['wind_degree'] = this._windDegree;
//     data['wind_dir'] = this._windDir;
//     data['pressure_mb'] = this._pressureMb;
//     data['pressure_in'] = this._pressureIn;
//     data['precip_mm'] = this._precipMm;
//     data['precip_in'] = this._precipIn;
//     data['humidity'] = this._humidity;
//     data['cloud'] = this._cloud;
//     data['feelslike_c'] = this._feelslikeC;
//     data['feelslike_f'] = this._feelslikeF;
//     data['vis_km'] = this._visKm;
//     data['vis_miles'] = this._visMiles;
//     data['uv'] = this._uv;
//     data['gust_mph'] = this._gustMph;
//     data['gust_kph'] = this._gustKph;
//     return data;
//   }
// }
//
// class Condition {
//   String? _text;
//   String? _icon;
//   int? _code;
//
//   Condition({String? text, String? icon, int? code}) {
//     if (text != null) {
//       this._text = text;
//     }
//     if (icon != null) {
//       this._icon = icon;
//     }
//     if (code != null) {
//       this._code = code;
//     }
//   }
//
//   String? get text => _text;
//   set text(String? text) => _text = text;
//   String? get icon => _icon;
//   set icon(String? icon) => _icon = icon;
//   int? get code => _code;
//   set code(int? code) => _code = code;
//
//   Condition.fromJson(Map<String, dynamic> json) {
//     _text = json['text'];
//     _icon = json['icon'];
//     _code = json['code'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['text'] = this._text;
//     data['icon'] = this._icon;
//     data['code'] = this._code;
//     return data;
//   }
// }
//
