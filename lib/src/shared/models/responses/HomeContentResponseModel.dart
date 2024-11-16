import 'dart:convert';

import 'package:happy_time_module/src/core/injectable/injection.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/shared/models/responses/GenresResponseModel.dart';
/// latest : [{"title":"Jurnal Risa by Risa Saraswati","id":27144,"poster_path":"https://image.tmdb.org/t/p/w500/2F1TPaYdPW1hzJCXfOBOH7xK6Pd.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/6C0PUdKVKe4NbOFZ7WzXSNiBneL.jpg","vote_average":4.8,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":55699,"movie_id":27144,"genre_id":99,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"وثائقي"},{"id":55700,"movie_id":27144,"genre_id":27,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"رعب"},{"id":55701,"movie_id":27144,"genre_id":53,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"إثارة"}],"downloads":[],"substitles":[]},{"title":"Red One","id":27143,"poster_path":"https://image.tmdb.org/t/p/w500/cdqLnri3NEGcmfnqwk2TSIYtddg.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/rOmUuQEZfPXglwFs5ELLLUDKodL.jpg","vote_average":7.1,"subtitle":"HDCAM","type":"movie","substype":0,"genres":[{"id":55696,"movie_id":27143,"genre_id":35,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"كوميديا"},{"id":55697,"movie_id":27143,"genre_id":28,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"حركة"},{"id":55698,"movie_id":27143,"genre_id":14,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"فانتازيا"}],"downloads":[],"substitles":[]},{"title":"Black Cab","id":27151,"poster_path":"https://image.tmdb.org/t/p/w500/OydsAHa1bLDQGaKIU7qW9SRjQb.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/b29YYLyQBkYx9TsiVqZdpJ7c0JG.jpg","vote_average":7.2,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":55713,"movie_id":27151,"genre_id":27,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"رعب"},{"id":55714,"movie_id":27151,"genre_id":53,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"إثارة"}],"downloads":[],"substitles":[]},{"title":"Shark Warning","id":27150,"poster_path":"https://image.tmdb.org/t/p/w500/jrVyGN0sQCqfN1Xqh7XfU8kToFw.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/cqOMHWZCZw9k6oLF32TDDrXEnrs.jpg","vote_average":4.5,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":55711,"movie_id":27150,"genre_id":28,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"حركة"},{"id":55712,"movie_id":27150,"genre_id":27,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"رعب"}],"downloads":[],"substitles":[]},{"title":"War Blade","id":27149,"poster_path":"https://image.tmdb.org/t/p/w500/mNyEZgyxHkvUgmsJsvZT3ks5Y7B.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/iUGjh0uVCOiiwDUIL2PG2ABNUwC.jpg","vote_average":4.9,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":55709,"movie_id":27149,"genre_id":10752,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"حرب"},{"id":55710,"movie_id":27149,"genre_id":53,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"إثارة"}],"downloads":[],"substitles":[]},{"title":"A Balloon’s Landing","id":27148,"poster_path":"http://image.tmdb.org/t/p/w500/r6FDABER9ZVPwfihTzXF4GrqE1X.jpg","backdrop_path":"http://image.tmdb.org/t/p/w500/uTZju1zwQ7KeKe2VbTRIjerhED3.jpg","vote_average":7,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":55708,"movie_id":27148,"genre_id":18,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"دراما"}],"downloads":[],"substitles":[]},{"title":"Je jatt Vigarh gya","id":27147,"poster_path":"http://image.tmdb.org/t/p/w500/diezoZdgczC0N2PcVVdyqouGd6l.jpg","backdrop_path":"http://image.tmdb.org/t/p/w500/kVAfNc74r8tigtTn3zRGpgM1waB.jpg","vote_average":0,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":55707,"movie_id":27147,"genre_id":18,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"دراما"}],"downloads":[],"substitles":[]},{"title":"Wir könnten genauso gut tot sein","id":27146,"poster_path":"http://image.tmdb.org/t/p/w500/8Ops8d5fMrATx76foD6buqM7OWf.jpg","backdrop_path":"http://image.tmdb.org/t/p/w500/k7QNlQBfJ0nByaddfwVv1Hvtb4F.jpg","vote_average":5.1,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":55705,"movie_id":27146,"genre_id":35,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"كوميديا"},{"id":55706,"movie_id":27146,"genre_id":18,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"دراما"}],"downloads":[],"substitles":[]},{"title":"Elevation","id":27145,"poster_path":"http://image.tmdb.org/t/p/w500/uQhYBxOVFU6s9agD49FnGHwJqG5.jpg","backdrop_path":"http://image.tmdb.org/t/p/w500/au3o84ub27qTZiMiEc9UYzN74V3.jpg","vote_average":5.5,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":55702,"movie_id":27145,"genre_id":28,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"حركة"},{"id":55703,"movie_id":27145,"genre_id":878,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"خيال علمي"},{"id":55704,"movie_id":27145,"genre_id":53,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"إثارة"}],"downloads":[],"substitles":[]},{"title":"وداعًا حمدي","id":27141,"poster_path":"https://image.tmdb.org/t/p/w500/itXCDPLkWqVRlUFgk3w0crrTjgB.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/uANfUdxE3T5hWjMxP8mzQRQyKuj.jpg","vote_average":0,"subtitle":"HDCAM","type":"movie","substype":0,"genres":[{"id":55693,"movie_id":27141,"genre_id":35,"created_at":"2024-11-09T16:26:42.000000Z","updated_at":"2024-11-09T16:26:42.000000Z","name":"كوميديا"}],"downloads":[],"substitles":[]}]
/// choosed : [{"title":"Yaathisai 2023","id":2710,"poster_path":"https://image.tmdb.org/t/p/w500/eFczmRIOQqsxgcihXxpPZYWMKog.jpg","vote_average":0,"subtitle":null,"type":"movie","substype":0,"genres":[{"id":6165,"movie_id":2710,"genre_id":10752,"created_at":"2023-05-12T16:01:46.000000Z","updated_at":"2023-05-12T16:01:46.000000Z","name":"حرب"},{"id":6166,"movie_id":2710,"genre_id":36,"created_at":"2023-05-12T16:01:46.000000Z","updated_at":"2023-05-12T16:01:46.000000Z","name":"تاريخ"},{"id":6167,"movie_id":2710,"genre_id":28,"created_at":"2023-05-12T16:01:46.000000Z","updated_at":"2023-05-12T16:01:46.000000Z","name":"حركة"}]},{"title":"Lo and Behold: Reveries of the Connected World 2016","id":12748,"poster_path":"https://image.tmdb.org/t/p/w500/pGyoC29ZsepNvuqnV3iLBBYku6G.jpg","vote_average":6.59,"subtitle":"HD","type":"movie","substype":0,"genres":[{"id":27520,"movie_id":12748,"genre_id":99,"created_at":"2023-08-16T12:25:39.000000Z","updated_at":"2023-08-16T12:25:39.000000Z","name":"وثائقي"}]},{"title":"The Macaluso Sisters 2020","id":9613,"poster_path":"https://image.tmdb.org/t/p/w500/bc1yOTsepZxTTl7SqxtpwPBmUPl.jpg","vote_average":7.11,"subtitle":"Bluray","type":"movie","substype":0,"genres":[{"id":20981,"movie_id":9613,"genre_id":18,"created_at":"2023-08-15T06:57:39.000000Z","updated_at":"2023-08-15T06:57:39.000000Z","name":"دراما"}]},{"title":"Dark Chocolate 2016","id":18574,"poster_path":"https://image.tmdb.org/t/p/w500/h8amchpxUAaPE7E3ocWLOEPFTjf.jpg","vote_average":4.8,"subtitle":"WEB-DL","type":"movie","substype":0,"genres":[{"id":40648,"movie_id":18574,"genre_id":53,"created_at":"2023-12-22T07:10:05.000000Z","updated_at":"2023-12-22T07:10:05.000000Z","name":"إثارة"},{"id":40649,"movie_id":18574,"genre_id":80,"created_at":"2023-12-22T07:10:05.000000Z","updated_at":"2023-12-22T07:10:05.000000Z","name":"جريمة"}]},{"name":" Sunshine by My Side ","id":7154,"poster_path":"https://image.tmdb.org/t/p/w500/ztrCE7MNHQkknHhJXEtaaSzXE98.jpg","vote_average":4.2,"subtitle":null,"type":"serie","genreslist":["أوبرا صابونية","دراما","عائلي"],"genres":[{"id":12877,"serie_id":7154,"genre_id":10766,"created_at":"2024-04-20T01:55:12.000000Z","updated_at":"2024-04-20T01:55:12.000000Z","name":"أوبرا صابونية"},{"id":12878,"serie_id":7154,"genre_id":18,"created_at":"2024-04-20T01:55:12.000000Z","updated_at":"2024-04-20T01:55:12.000000Z","name":"دراما"},{"id":12879,"serie_id":7154,"genre_id":10751,"created_at":"2024-04-20T01:55:12.000000Z","updated_at":"2024-04-20T01:55:12.000000Z","name":"عائلي"}]},{"name":"The Red Sleeve","id":2719,"poster_path":"https://image.tmdb.org/t/p/w500/1AZK2bnsmu5PIbkfxFkKbrjf5Oo.jpg","vote_average":8.17,"subtitle":null,"type":"serie","genreslist":["دراما"],"genres":[{"id":4833,"serie_id":2719,"genre_id":18,"created_at":"2023-08-19T11:17:48.000000Z","updated_at":"2023-08-19T11:17:48.000000Z","name":"دراما"}]},{"name":"I Do(n’t) Love Him","id":6238,"poster_path":"https://image.tmdb.org/t/p/w500/kgV5UqScG6uBqoBHCTUSQ42iIgb.jpg","vote_average":0,"subtitle":null,"type":"serie","genreslist":["كوميديا"],"genres":[{"id":11409,"serie_id":6238,"genre_id":35,"created_at":"2023-11-04T09:52:05.000000Z","updated_at":"2023-11-04T09:52:05.000000Z","name":"كوميديا"}]},{"name":"Obsession","id":634,"poster_path":"https://image.tmdb.org/t/p/w500/8nQmxCYvidrCMxYCPdhuls94cl9.jpg","vote_average":7,"subtitle":null,"type":"serie","genreslist":["دراما","غموض"],"genres":[{"id":958,"serie_id":634,"genre_id":18,"created_at":"2023-04-13T11:23:00.000000Z","updated_at":"2023-04-13T11:23:00.000000Z","name":"دراما"},{"id":959,"serie_id":634,"genre_id":9648,"created_at":"2023-04-13T11:23:00.000000Z","updated_at":"2023-04-13T11:23:00.000000Z","name":"غموض"}]},{"name":"ساعطيك سرا مدبلج","id":507,"poster_path":"https://image.tmdb.org/t/p/w500/kB3SY3TXaTv3Gzkr3v7qT3RhvU8.jpg","vote_average":8,"subtitle":null,"type":"anime","genreslist":["دراما","غموض"],"genres":[{"id":819,"anime_id":507,"genre_id":18,"created_at":"2024-09-29T21:23:34.000000Z","updated_at":"2024-09-29T21:23:34.000000Z","name":"دراما"},{"id":820,"anime_id":507,"genre_id":9648,"created_at":"2024-09-29T21:23:34.000000Z","updated_at":"2024-09-29T21:23:34.000000Z","name":"غموض"}]},{"name":"منزلي مدبلج","id":308,"poster_path":"https://image.tmdb.org/t/p/w500/obeeA246RNdQf2iQiBV3YTeS8ad.jpg","vote_average":6.9,"subtitle":"مدبلج","type":"anime","genreslist":["دراما"],"genres":[{"id":528,"anime_id":308,"genre_id":18,"created_at":"2023-10-20T16:30:26.000000Z","updated_at":"2023-10-20T16:30:26.000000Z","name":"دراما"}]},{"name":"النهر الذي يشرق منه الشمس","id":433,"poster_path":"https://image.tmdb.org/t/p/w500/diZfYo9Z6AqdK8yfCp8GLzMePqc.jpg","vote_average":5.59,"subtitle":"مدبلج","type":"anime","genreslist":["دراما","حرب وسياسة"],"genres":[{"id":713,"anime_id":433,"genre_id":18,"created_at":"2024-01-10T12:58:40.000000Z","updated_at":"2024-01-10T12:58:40.000000Z","name":"دراما"},{"id":714,"anime_id":433,"genre_id":10768,"created_at":"2024-01-10T12:58:40.000000Z","updated_at":"2024-01-10T12:58:40.000000Z","name":"حرب وسياسة"}]},{"name":"الحارس مدبلج","id":296,"poster_path":"https://image.tmdb.org/t/p/w500/4wL4qreHtBAJSfTis1WzX2JfetG.jpg","vote_average":8,"subtitle":"مدبلج","type":"anime","genreslist":["دراما","حركة ومغامرة"],"genres":[{"id":514,"anime_id":296,"genre_id":18,"created_at":"2023-10-20T14:40:25.000000Z","updated_at":"2023-10-20T14:40:25.000000Z","name":"دراما"},{"id":515,"anime_id":296,"genre_id":10759,"created_at":"2023-10-20T14:40:25.000000Z","updated_at":"2023-10-20T14:40:25.000000Z","name":"حركة ومغامرة"}]}]
/// recommended : [{"title":"Uglies 2024","id":26618,"poster_path":"https://image.tmdb.org/t/p/w500/og1SH6we0UQx5XNIDSfxDD4S1Sp.jpg","vote_average":10,"subtitle":null,"backdrop_path":"https://image.tmdb.org/t/p/w500/rbEsJL59iW5mr4s1YnLocEFdO3Q.jpg","type":"movie","substype":0,"genres":[{"id":54577,"movie_id":26618,"genre_id":878,"created_at":"2024-09-13T11:15:43.000000Z","updated_at":"2024-09-13T11:15:43.000000Z","name":"خيال علمي"},{"id":54578,"movie_id":26618,"genre_id":18,"created_at":"2024-09-13T11:15:43.000000Z","updated_at":"2024-09-13T11:15:43.000000Z","name":"دراما"},{"id":54579,"movie_id":26618,"genre_id":12,"created_at":"2024-09-13T11:15:43.000000Z","updated_at":"2024-09-13T11:15:43.000000Z","name":"مغامرة"}]},{"title":"The Firing Squad 2024","id":26409,"poster_path":"https://image.tmdb.org/t/p/w500/tk0GkJfFQK5GxYvsYx57JIy10gn.jpg","vote_average":10,"subtitle":"HDCAM","backdrop_path":null,"type":"movie","substype":0,"genres":[{"id":54108,"movie_id":26409,"genre_id":18,"created_at":"2024-08-13T08:48:03.000000Z","updated_at":"2024-08-13T08:48:03.000000Z","name":"دراما"}]},{"title":"Modern Masters 2024","id":26371,"poster_path":"https://image.tmdb.org/t/p/w500/dwZn04UO8VFC3wINew34OqAi2kH.jpg","vote_average":10,"subtitle":null,"backdrop_path":"https://image.tmdb.org/t/p/w500/1R7p1wUe4IpW16ITYtIw3QhgQX2.jpg","type":"movie","substype":0,"genres":[{"id":54021,"movie_id":26371,"genre_id":99,"created_at":"2024-08-03T18:44:41.000000Z","updated_at":"2024-08-03T18:44:41.000000Z","name":"وثائقي"}]},{"name":"\n                             Born for the Spotlight                                                      ","id":7980,"poster_path":"http://image.tmdb.org/t/p/w500/5p9NGYvs2PXyh8IiiAGEJ6omeQx.jpg","vote_average":10,"backdrop_path":"http://image.tmdb.org/t/p/w500/pYppQQIDK9AJDSskRYZNqvSnpVu.jpg","subtitle":null,"type":"serie","genreslist":["دراما"],"genres":[{"id":14351,"serie_id":7980,"genre_id":18,"created_at":"2024-11-07T03:09:51.000000Z","updated_at":"2024-11-07T03:09:51.000000Z","name":"دراما"}]},{"name":"\n                             Citadel: Honey Bunny                                                      ","id":7979,"poster_path":"http://image.tmdb.org/t/p/w500/lzZ9J2FOsaq1DCuD7k2f4ogbXdD.jpg","vote_average":10,"backdrop_path":"http://image.tmdb.org/t/p/w500/tn0Rn7kKXB9DwH8smBwkl66pYaG.jpg","subtitle":null,"type":"serie","genreslist":["حركة ومغامرة","دراما"],"genres":[{"id":14349,"serie_id":7979,"genre_id":10759,"created_at":"2024-11-07T02:59:44.000000Z","updated_at":"2024-11-07T02:59:44.000000Z","name":"حركة ومغامرة"},{"id":14350,"serie_id":7979,"genre_id":18,"created_at":"2024-11-07T02:59:44.000000Z","updated_at":"2024-11-07T02:59:44.000000Z","name":"دراما"}]},{"name":"\n                             Gangnam B-Side                                                      ","id":7973,"poster_path":"http://image.tmdb.org/t/p/w500/8acajpIg9k0ZVjeWlExLUlr2244.jpg","vote_average":10,"backdrop_path":"http://image.tmdb.org/t/p/w500/qUCed0bMROSF7jlzc3xn2xhlK6p.jpg","subtitle":null,"type":"serie","genreslist":["جريمة","دراما","غموض"],"genres":[{"id":14340,"serie_id":7973,"genre_id":80,"created_at":"2024-11-06T10:12:41.000000Z","updated_at":"2024-11-06T10:12:41.000000Z","name":"جريمة"},{"id":14341,"serie_id":7973,"genre_id":18,"created_at":"2024-11-06T10:12:41.000000Z","updated_at":"2024-11-06T10:12:41.000000Z","name":"دراما"},{"id":14342,"serie_id":7973,"genre_id":9648,"created_at":"2024-11-06T10:12:41.000000Z","updated_at":"2024-11-06T10:12:41.000000Z","name":"غموض"}]},{"name":"ليلى مدبلج","id":509,"poster_path":"https://image.tmdb.org/t/p/w500/piMRB2g1p9F2huRNnSZMne8NNVF.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/1CTzAkijkEgcMHUOBVyGVtuRUEo.jpg","vote_average":10,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["دراما"],"genres":[{"id":821,"anime_id":509,"genre_id":18,"created_at":"2024-10-04T15:11:08.000000Z","updated_at":"2024-10-04T15:11:08.000000Z","name":"دراما"}]},{"name":"فتاة اليد مدبلج","id":496,"poster_path":"https://image.tmdb.org/t/p/w500/vAyLT8sNI6gNcJWJ5WvkCc2JEUm.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/6UZp6Z9wn4mcm89MQrieDpmSz11.jpg","vote_average":10,"subtitle":"مدبلج الحلقة الأخيرة","is_anime":1,"type":"anime","genreslist":["عائلي","دراما"],"genres":[{"id":803,"anime_id":496,"genre_id":10751,"created_at":"2024-08-18T18:29:36.000000Z","updated_at":"2024-08-18T18:29:36.000000Z","name":"عائلي"},{"id":804,"anime_id":496,"genre_id":18,"created_at":"2024-08-18T18:29:36.000000Z","updated_at":"2024-08-18T18:29:36.000000Z","name":"دراما"}]},{"name":"اسرار الزواج مدبلج","id":494,"poster_path":"https://image.tmdb.org/t/p/w500/2HFV4ZpQUNkEGFgPZ8h4fOlgTxb.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/uKTjUXjhFyar7mAvLjnGuQ4ikE5.jpg","vote_average":10,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["دراما"],"genres":[{"id":802,"anime_id":494,"genre_id":18,"created_at":"2024-08-06T17:57:16.000000Z","updated_at":"2024-08-06T17:57:16.000000Z","name":"دراما"}]}]
/// thisweek : [{"name":"فلوجة 2","id":493,"poster_path":"https://flech.tn/egybest/public/api/series/image/yCKWP87FhqTS0QuxLgwT2fNX5wa3iT3tEFGZ8qV5.jpg","vote_average":8,"newEpisodes":1,"subtitle":"الحلقة الأخيرة","type":"serie","genreslist":["تونس"],"genres":[{"id":886,"serie_id":493,"genre_id":10775,"created_at":"2023-03-31T23:49:08.000000Z","updated_at":"2023-03-31T23:49:08.000000Z","name":"تونس"}]},{"name":"رامز جاب من الاخر","id":432,"poster_path":"https://flech.tn/egybest/public/api/series/image/tuxbNk5aXl0M7ARKo4c083oSYJu63vZbnsk6aZfR.jpg","vote_average":5,"newEpisodes":1,"subtitle":"الحلقة الأخيرة","type":"serie","genreslist":[],"genres":[]},{"name":"الحشاشين","id":6682,"poster_path":"https://image.tmdb.org/t/p/w500/cmr5Z3F66aa3Qp4d1Q7VQWueimg.jpg","vote_average":5,"newEpisodes":1,"subtitle":"الحلقة الأخيرة","type":"serie","genreslist":["دراما","حركة ومغامرة"],"genres":[{"id":12240,"serie_id":6682,"genre_id":18,"created_at":"2024-03-10T06:49:53.000000Z","updated_at":"2024-03-10T06:49:53.000000Z","name":"دراما"},{"id":12241,"serie_id":6682,"genre_id":10759,"created_at":"2024-03-10T06:49:53.000000Z","updated_at":"2024-03-10T06:49:53.000000Z","name":"حركة ومغامرة"}]},{"name":"حق عرب","id":6700,"poster_path":"https://image.tmdb.org/t/p/w500/iejEAijc9XiHQ0w9mQtW1r5zI9j.jpg","vote_average":0,"newEpisodes":1,"subtitle":"الحلقة الأخيرة","type":"serie","genreslist":["دراما"],"genres":[{"id":12256,"serie_id":6700,"genre_id":18,"created_at":"2024-03-10T07:07:50.000000Z","updated_at":"2024-03-10T07:07:50.000000Z","name":"دراما"}]},{"name":"المعلم","id":6696,"poster_path":"https://image.tmdb.org/t/p/w500/i8SCQ1oTpS3xlrPbDwkNMCkfuD2.jpg","vote_average":0,"newEpisodes":1,"subtitle":"الحلقة الأخيرة","type":"serie","genreslist":["دراما"],"genres":[{"id":12252,"serie_id":6696,"genre_id":18,"created_at":"2024-03-10T07:05:50.000000Z","updated_at":"2024-03-10T07:05:50.000000Z","name":"دراما"}]},{"name":"المتوحش مدبلج","id":398,"poster_path":"https://image.tmdb.org/t/p/w500/frotUcj0HpfQmcpYFX5uoLaPlf3.jpg","vote_average":9.5,"newEpisodes":0,"subtitle":"مدبلج","type":"anime","genreslist":["دراما"],"genres":[{"id":650,"anime_id":398,"genre_id":18,"created_at":"2023-10-31T13:31:11.000000Z","updated_at":"2023-10-31T13:31:11.000000Z","name":"دراما"}]},{"name":"المؤسس عثمان مدبلج","id":69,"poster_path":"https://image.tmdb.org/t/p/w500/oW4Lt0J4cJrRrk66q9bkPNQTuwp.jpg","vote_average":7.9,"newEpisodes":0,"subtitle":"مدبلج","type":"anime","genreslist":["حرب وسياسة","حركة ومغامرة","دراما","وثائقي"],"genres":[{"id":187,"anime_id":69,"genre_id":10768,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"حرب وسياسة"},{"id":188,"anime_id":69,"genre_id":10759,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"حركة ومغامرة"},{"id":189,"anime_id":69,"genre_id":18,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"دراما"},{"id":190,"anime_id":69,"genre_id":99,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"وثائقي"}]},{"name":"الحفرة مدبلج","id":96,"poster_path":"https://image.tmdb.org/t/p/w500/dyFmwlAQCEUNQ1JuFothxO1G0zz.jpg","vote_average":7.86,"newEpisodes":0,"subtitle":"مدبلج","type":"anime","genreslist":["جريمة","حركة ومغامرة","دراما"],"genres":[{"id":237,"anime_id":96,"genre_id":80,"created_at":"2023-07-29T14:39:38.000000Z","updated_at":"2023-07-29T14:39:38.000000Z","name":"جريمة"},{"id":238,"anime_id":96,"genre_id":10759,"created_at":"2023-07-29T14:39:38.000000Z","updated_at":"2023-07-29T14:39:38.000000Z","name":"حركة ومغامرة"},{"id":239,"anime_id":96,"genre_id":18,"created_at":"2023-07-29T14:39:38.000000Z","updated_at":"2023-07-29T14:39:38.000000Z","name":"دراما"}]},{"name":"اخوتي مدبلج","id":105,"poster_path":"https://image.tmdb.org/t/p/w500/xYzEZYnrCGfwJh7UCqxVGyogTmP.jpg","vote_average":7.97,"newEpisodes":0,"subtitle":"مدبلج","type":"anime","genreslist":["دراما"],"genres":[{"id":255,"anime_id":105,"genre_id":18,"created_at":"2023-08-02T12:01:21.000000Z","updated_at":"2023-08-02T12:01:21.000000Z","name":"دراما"}]},{"name":"التفاح الحرام مدبلج","id":73,"poster_path":"https://image.tmdb.org/t/p/w500/aloYtdx49FeeF2YTbGwo2J3OUr9.jpg","vote_average":6.6,"newEpisodes":0,"subtitle":"مدبلج","type":"anime","genreslist":["عائلي","دراما","كوميديا"],"genres":[{"id":197,"anime_id":73,"genre_id":10751,"created_at":"2023-07-24T08:35:30.000000Z","updated_at":"2023-07-24T08:35:30.000000Z","name":"عائلي"},{"id":198,"anime_id":73,"genre_id":18,"created_at":"2023-07-24T08:35:30.000000Z","updated_at":"2023-07-24T08:35:30.000000Z","name":"دراما"},{"id":199,"anime_id":73,"genre_id":35,"created_at":"2023-07-24T08:35:31.000000Z","updated_at":"2023-07-24T08:35:31.000000Z","name":"كوميديا"}]}]
/// trending : [{"title":"The Super Mario Bros 2023","id":2497,"poster_path":"https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg","vote_average":7.53,"subtitle":"Bluray","type":"movie","substype":0,"genres":[{"id":5688,"movie_id":2497,"genre_id":16,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"رسوم متحركة"},{"id":5689,"movie_id":2497,"genre_id":12,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"مغامرة"},{"id":5690,"movie_id":2497,"genre_id":10751,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"عائلي"},{"id":5691,"movie_id":2497,"genre_id":14,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"فانتازيا"},{"id":5692,"movie_id":2497,"genre_id":35,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"كوميديا"}]},{"title":"Samaritan 2022","id":47,"poster_path":"https://image.tmdb.org/t/p/w500/vwq5iboxYoaSpOmEQrhq9tHicq7.jpg","vote_average":7.07,"subtitle":"WEB-DL","type":"movie","substype":0,"genres":[{"id":92,"movie_id":47,"genre_id":28,"created_at":"2022-09-05T22:10:20.000000Z","updated_at":"2022-09-05T22:10:20.000000Z","name":"حركة"},{"id":93,"movie_id":47,"genre_id":18,"created_at":"2022-09-05T22:10:20.000000Z","updated_at":"2022-09-05T22:10:20.000000Z","name":"دراما"},{"id":94,"movie_id":47,"genre_id":878,"created_at":"2022-09-05T22:10:20.000000Z","updated_at":"2022-09-05T22:10:20.000000Z","name":"خيال علمي"}]},{"title":"Dragon Ball Super: Super Hero 2022","id":575,"poster_path":"https://image.tmdb.org/t/p/w500/rugyJdeoJm7cSJL1q4jBpTNbxyU.jpg","vote_average":8,"subtitle":"Bluray","type":"movie","substype":0,"genres":[{"id":1413,"movie_id":575,"genre_id":16,"created_at":"2022-09-13T02:54:16.000000Z","updated_at":"2022-09-13T02:54:16.000000Z","name":"رسوم متحركة"},{"id":1414,"movie_id":575,"genre_id":878,"created_at":"2022-09-13T02:54:16.000000Z","updated_at":"2022-09-13T02:54:16.000000Z","name":"خيال علمي"},{"id":1415,"movie_id":575,"genre_id":28,"created_at":"2022-09-13T02:54:16.000000Z","updated_at":"2022-09-13T02:54:16.000000Z","name":"حركة"}]},{"name":"The Lord of the Rings: The Rings of Power","id":37,"poster_path":"https://image.tmdb.org/t/p/w500/65DUg8EWQclOnDfNWWdL5Xp6H8F.jpg","vote_average":7.55,"subtitle":null,"type":"serie","genreslist":["خيال علمي وفانتازيا","حركة ومغامرة","دراما"],"genres":[{"id":67,"serie_id":37,"genre_id":10765,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"خيال علمي وفانتازيا"},{"id":68,"serie_id":37,"genre_id":10759,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"حركة ومغامرة"},{"id":69,"serie_id":37,"genre_id":18,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"دراما"}]},{"name":"She-Hulk: Attorney at Law","id":23,"poster_path":"https://image.tmdb.org/t/p/w500/sSKMoXgCjtPf807cPKZbgQ6DMRD.jpg","vote_average":7.27,"subtitle":null,"type":"serie","genreslist":["كوميديا","خيال علمي وفانتازيا"],"genres":[{"id":42,"serie_id":23,"genre_id":35,"created_at":"2022-09-17T01:27:48.000000Z","updated_at":"2022-09-17T01:27:48.000000Z","name":"كوميديا"},{"id":43,"serie_id":23,"genre_id":10765,"created_at":"2022-09-17T01:27:48.000000Z","updated_at":"2022-09-17T01:27:48.000000Z","name":"خيال علمي وفانتازيا"}]},{"name":"House of the Dragon","id":43,"poster_path":"http://image.tmdb.org/t/p/w500/7QMsOTMUswlwxJP0rTTZfmz2tX2.jpg","vote_average":8,"subtitle":null,"type":"serie","genreslist":["خيال علمي وفانتازيا","دراما","حركة ومغامرة"],"genres":[{"id":79,"serie_id":43,"genre_id":10765,"created_at":"2022-09-26T05:48:50.000000Z","updated_at":"2022-09-26T05:48:50.000000Z","name":"خيال علمي وفانتازيا"},{"id":80,"serie_id":43,"genre_id":18,"created_at":"2022-09-26T05:48:50.000000Z","updated_at":"2022-09-26T05:48:50.000000Z","name":"دراما"},{"id":81,"serie_id":43,"genre_id":10759,"created_at":"2022-09-26T05:48:50.000000Z","updated_at":"2022-09-26T05:48:50.000000Z","name":"حركة ومغامرة"}]},{"name":"بليتش مدبلج","id":104,"poster_path":"https://image.tmdb.org/t/p/w500/3F76C1TtZpXtPcEQI0kz2lJgq1B.jpg","backdrop_path":"https://image.tmdb.org/t/p/w200/qtfMr08KQsWXnCHY0a96N8NpQ2l.jpg","vote_average":8.4,"subtitle":"مدبلج","type":"anime","genreslist":["حركة ومغامرة","رسوم متحركة","خيال علمي وفانتازيا"],"genres":[{"id":252,"anime_id":104,"genre_id":10759,"created_at":"2023-08-02T11:51:15.000000Z","updated_at":"2023-08-02T11:51:15.000000Z","name":"حركة ومغامرة"},{"id":253,"anime_id":104,"genre_id":16,"created_at":"2023-08-02T11:51:15.000000Z","updated_at":"2023-08-02T11:51:15.000000Z","name":"رسوم متحركة"},{"id":254,"anime_id":104,"genre_id":10765,"created_at":"2023-08-02T11:51:15.000000Z","updated_at":"2023-08-02T11:51:15.000000Z","name":"خيال علمي وفانتازيا"}]},{"name":"فريد مدبلج","id":443,"poster_path":"https://image.tmdb.org/t/p/w500/ttADVHVZR207sIGGreqnvEIjdQy.jpg","backdrop_path":"https://image.tmdb.org/t/p/w200/vh9Rk0BeU3udQoOFUIxndmafq7s.jpg","vote_average":8.79,"subtitle":"مدبلج","type":"anime","genreslist":["عائلي","دراما"],"genres":[{"id":727,"anime_id":443,"genre_id":10751,"created_at":"2024-02-27T09:22:11.000000Z","updated_at":"2024-02-27T09:22:11.000000Z","name":"عائلي"},{"id":728,"anime_id":443,"genre_id":18,"created_at":"2024-02-27T09:22:11.000000Z","updated_at":"2024-02-27T09:22:11.000000Z","name":"دراما"}]},{"name":"تلك حياتي انا مدبلج","id":498,"poster_path":"https://image.tmdb.org/t/p/w500/tx3rQXH5DL9dxP5EfPm0JmasP1u.jpg","backdrop_path":"https://image.tmdb.org/t/p/w500/fWuXo5znisJ4G9G21r5jlB82kCF.jpg","vote_average":5.9,"subtitle":"مدبلج","type":"anime","genreslist":["دراما"],"genres":[{"id":806,"anime_id":498,"genre_id":18,"created_at":"2024-09-01T14:17:15.000000Z","updated_at":"2024-09-01T14:17:15.000000Z","name":"دراما"}]}]
/// pinned : [{"id":7753,"name":"العبقري مترجم","poster_path":"https://image.tmdb.org/t/p/w500/bFEnmI6UwtiMiet4shzWtICiULm.jpg","vote_average":0,"newEpisodes":0,"subtitle":"مترجم","pinned":1,"type":"serie"},{"id":7733,"name":"The Penguin","poster_path":"http://image.tmdb.org/t/p/w500/vOWcqC4oDQws1doDWLO7d3dh5qc.jpg","vote_average":7.8,"newEpisodes":0,"subtitle":null,"pinned":1,"type":"serie"},{"id":37,"name":"The Lord of the Rings: The Rings of Power","poster_path":"https://image.tmdb.org/t/p/w500/65DUg8EWQclOnDfNWWdL5Xp6H8F.jpg","vote_average":7.55,"newEpisodes":0,"subtitle":null,"pinned":1,"type":"serie"},{"id":6668,"name":"The Walking Dead: Daryl Dixon","poster_path":"https://image.tmdb.org/t/p/w500/7fuObDIHMgKQEUYcNVugJA70Hqr.jpg","vote_average":8.3,"newEpisodes":0,"subtitle":null,"pinned":1,"type":"serie"}]
/// top10 : [{"id":7268,"name":" The Walking Dead","poster_path":"https://image.tmdb.org/t/p/w500/n7PVu0hSz2sAsVekpOIoCnkWlbn.jpg","vote_average":8.12,"pinned":0,"type":"serie"},{"id":5602,"name":"Game of Thrones","poster_path":"https://image.tmdb.org/t/p/w500/1XS1oqL89opfnbLl8WnZY1O1uJx.jpg","vote_average":9,"pinned":0,"type":"serie"},{"id":5606,"name":"Prison Break","poster_path":"https://image.tmdb.org/t/p/w500/z885tJn5kkUHppjIK1g2Q54iTff.jpg","vote_average":8.09,"pinned":0,"type":"serie"},{"id":5609,"name":"Breaking Bad","poster_path":"https://image.tmdb.org/t/p/w500/3xnWaLQjelJDDF7LT1WBo6f4BRe.jpg","vote_average":9,"pinned":0,"type":"serie"},{"id":5603,"name":"Vikings","poster_path":"https://image.tmdb.org/t/p/w500/bQLrHIRNEkE3PdIWQrZHynQZazu.jpg","vote_average":6,"pinned":0,"type":"serie"},{"id":1989,"name":"One Piece","poster_path":"https://image.tmdb.org/t/p/w500/q0mqUen18S1LaQtUtkSxrSGVoII.jpg","vote_average":6,"pinned":0,"type":"serie"},{"id":6970,"name":"Fallout","poster_path":"https://image.tmdb.org/t/p/w500/AnsSKR9LuK0T9bAOcPVA3PUvyWj.jpg","vote_average":9.03,"pinned":0,"type":"serie"},{"id":357,"name":"Vikings: Valhalla","poster_path":"http://image.tmdb.org/t/p/original/uCr7Ov7Rpzx0c0EPqbPcoEruTYl.jpg","vote_average":7,"pinned":0,"type":"serie"},{"id":5618,"name":"Dexter","poster_path":"https://image.tmdb.org/t/p/w500/q8dWfc4JwQuv3HayIZeO84jAXED.jpg","vote_average":8.2,"pinned":0,"type":"serie"},{"id":827,"name":"The Sopranos","poster_path":"https://image.tmdb.org/t/p/w500/4qAm588cmD8h3nPRHmp13jgQQMJ.jpg","vote_average":8,"pinned":0,"type":"serie"}]
/// popular : [{"title":"The Super Mario Bros 2023","id":2497,"poster_path":"https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg","vote_average":7.53,"subtitle":"Bluray","substype":0,"genres":[{"id":5688,"movie_id":2497,"genre_id":16,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"رسوم متحركة"},{"id":5689,"movie_id":2497,"genre_id":12,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"مغامرة"},{"id":5690,"movie_id":2497,"genre_id":10751,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"عائلي"},{"id":5691,"movie_id":2497,"genre_id":14,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"فانتازيا"},{"id":5692,"movie_id":2497,"genre_id":35,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"كوميديا"}]},{"title":"Samaritan 2022","id":47,"poster_path":"https://image.tmdb.org/t/p/w500/vwq5iboxYoaSpOmEQrhq9tHicq7.jpg","vote_average":7.07,"subtitle":"WEB-DL","substype":0,"genres":[{"id":92,"movie_id":47,"genre_id":28,"created_at":"2022-09-05T22:10:20.000000Z","updated_at":"2022-09-05T22:10:20.000000Z","name":"حركة"},{"id":93,"movie_id":47,"genre_id":18,"created_at":"2022-09-05T22:10:20.000000Z","updated_at":"2022-09-05T22:10:20.000000Z","name":"دراما"},{"id":94,"movie_id":47,"genre_id":878,"created_at":"2022-09-05T22:10:20.000000Z","updated_at":"2022-09-05T22:10:20.000000Z","name":"خيال علمي"}]},{"title":"Dragon Ball Super: Super Hero 2022","id":575,"poster_path":"https://image.tmdb.org/t/p/w500/rugyJdeoJm7cSJL1q4jBpTNbxyU.jpg","vote_average":8,"subtitle":"Bluray","substype":0,"genres":[{"id":1413,"movie_id":575,"genre_id":16,"created_at":"2022-09-13T02:54:16.000000Z","updated_at":"2022-09-13T02:54:16.000000Z","name":"رسوم متحركة"},{"id":1414,"movie_id":575,"genre_id":878,"created_at":"2022-09-13T02:54:16.000000Z","updated_at":"2022-09-13T02:54:16.000000Z","name":"خيال علمي"},{"id":1415,"movie_id":575,"genre_id":28,"created_at":"2022-09-13T02:54:16.000000Z","updated_at":"2022-09-13T02:54:16.000000Z","name":"حركة"}]},{"title":"Thor: Love and Thunder 2022","id":97,"poster_path":"https://image.tmdb.org/t/p/w500/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg","vote_average":6.74,"subtitle":"Bluray","substype":0,"genres":[{"id":199,"movie_id":97,"genre_id":28,"created_at":"2022-09-06T02:14:39.000000Z","updated_at":"2022-09-06T02:14:39.000000Z","name":"حركة"},{"id":200,"movie_id":97,"genre_id":12,"created_at":"2022-09-06T02:14:39.000000Z","updated_at":"2022-09-06T02:14:39.000000Z","name":"مغامرة"},{"id":201,"movie_id":97,"genre_id":14,"created_at":"2022-09-06T02:14:39.000000Z","updated_at":"2022-09-06T02:14:39.000000Z","name":"فانتازيا"}]},{"title":"Barbie 2023","id":3623,"poster_path":"https://image.tmdb.org/t/p/w500/e8Lng7AmGnCYLq7XPQnI9prRF3S.jpg","vote_average":5,"subtitle":"Bluray","substype":0,"genres":[{"id":8415,"movie_id":3623,"genre_id":35,"created_at":"2023-07-27T17:35:03.000000Z","updated_at":"2023-07-27T17:35:03.000000Z","name":"كوميديا"},{"id":8416,"movie_id":3623,"genre_id":12,"created_at":"2023-07-27T17:35:03.000000Z","updated_at":"2023-07-27T17:35:03.000000Z","name":"مغامرة"},{"id":8417,"movie_id":3623,"genre_id":14,"created_at":"2023-07-27T17:35:03.000000Z","updated_at":"2023-07-27T17:35:03.000000Z","name":"فانتازيا"}]},{"title":"Godzilla x Kong: The New Empire 2024","id":22033,"poster_path":"https://image.tmdb.org/t/p/w500/gmGK5Gw5CIGMPhOmTO0bNA9Q66c.jpg","vote_average":7.12,"subtitle":null,"substype":0,"genres":[{"id":48302,"movie_id":22033,"genre_id":28,"created_at":"2024-04-02T14:17:31.000000Z","updated_at":"2024-04-02T14:17:31.000000Z","name":"حركة"},{"id":48303,"movie_id":22033,"genre_id":878,"created_at":"2024-04-02T14:17:31.000000Z","updated_at":"2024-04-02T14:17:31.000000Z","name":"خيال علمي"},{"id":48304,"movie_id":22033,"genre_id":12,"created_at":"2024-04-02T14:17:31.000000Z","updated_at":"2024-04-02T14:17:31.000000Z","name":"مغامرة"}]},{"title":"Transformers: Rise of the Beasts 2023","id":3375,"poster_path":"https://image.tmdb.org/t/p/w500/gPbM0MK8CP8A174rmUwGsADNYKD.jpg","vote_average":7.33,"subtitle":"WEB-DL","substype":0,"genres":[{"id":7769,"movie_id":3375,"genre_id":28,"created_at":"2023-07-14T08:21:32.000000Z","updated_at":"2023-07-14T08:21:32.000000Z","name":"حركة"},{"id":7770,"movie_id":3375,"genre_id":12,"created_at":"2023-07-14T08:21:32.000000Z","updated_at":"2023-07-14T08:21:32.000000Z","name":"مغامرة"},{"id":7771,"movie_id":3375,"genre_id":878,"created_at":"2023-07-14T08:21:32.000000Z","updated_at":"2023-07-14T08:21:32.000000Z","name":"خيال علمي"}]},{"title":"Fast X 2023","id":2754,"poster_path":"https://image.tmdb.org/t/p/w500/qzyVx4lBkkzVV2RzpTUHl09yelU.jpg","vote_average":6,"subtitle":"Bluray","substype":0,"genres":[{"id":6252,"movie_id":2754,"genre_id":28,"created_at":"2023-05-20T19:06:15.000000Z","updated_at":"2023-05-20T19:06:15.000000Z","name":"حركة"},{"id":6253,"movie_id":2754,"genre_id":80,"created_at":"2023-05-20T19:06:15.000000Z","updated_at":"2023-05-20T19:06:15.000000Z","name":"جريمة"},{"id":6254,"movie_id":2754,"genre_id":53,"created_at":"2023-05-20T19:06:15.000000Z","updated_at":"2023-05-20T19:06:15.000000Z","name":"إثارة"}]},{"title":"Nope 2022","id":58,"poster_path":"https://image.tmdb.org/t/p/w500/AcKVlWaNVVVFQwro3nLXqPljcYA.jpg","vote_average":7.07,"subtitle":"Bluray","substype":0,"genres":[{"id":112,"movie_id":58,"genre_id":27,"created_at":"2022-09-05T23:30:49.000000Z","updated_at":"2022-09-05T23:30:49.000000Z","name":"رعب"},{"id":113,"movie_id":58,"genre_id":9648,"created_at":"2022-09-05T23:30:49.000000Z","updated_at":"2022-09-05T23:30:49.000000Z","name":"غموض"},{"id":114,"movie_id":58,"genre_id":878,"created_at":"2022-09-05T23:30:49.000000Z","updated_at":"2022-09-05T23:30:49.000000Z","name":"خيال علمي"},{"id":115,"movie_id":58,"genre_id":53,"created_at":"2022-09-05T23:30:49.000000Z","updated_at":"2022-09-05T23:30:49.000000Z","name":"إثارة"}]},{"title":"DC League of Super-Pets 2022","id":579,"poster_path":"https://image.tmdb.org/t/p/w500/r7XifzvtezNt31ypvsmb6Oqxw49.jpg","vote_average":7.6,"subtitle":"WEB-DL","substype":0,"genres":[{"id":1428,"movie_id":579,"genre_id":16,"created_at":"2022-09-13T02:56:46.000000Z","updated_at":"2022-09-13T02:56:46.000000Z","name":"رسوم متحركة"},{"id":1429,"movie_id":579,"genre_id":28,"created_at":"2022-09-13T02:56:46.000000Z","updated_at":"2022-09-13T02:56:46.000000Z","name":"حركة"},{"id":1430,"movie_id":579,"genre_id":10751,"created_at":"2022-09-13T02:56:46.000000Z","updated_at":"2022-09-13T02:56:46.000000Z","name":"عائلي"},{"id":1431,"movie_id":579,"genre_id":878,"created_at":"2022-09-13T02:56:46.000000Z","updated_at":"2022-09-13T02:56:46.000000Z","name":"خيال علمي"},{"id":1432,"movie_id":579,"genre_id":35,"created_at":"2022-09-13T02:56:46.000000Z","updated_at":"2022-09-13T02:56:46.000000Z","name":"كوميديا"}]}]
/// recents : [{"name":"المدينة البعيدة","id":8001,"poster_path":"https://image.tmdb.org/t/p/w500/lGfzYV5YVCnFPULG5RjsudTPCpm.jpg","vote_average":0,"newEpisodes":0,"subtitle":"مترجم","genreslist":["دراما","عائلي","حركة ومغامرة"],"genres":[{"id":14381,"serie_id":8001,"genre_id":18,"created_at":"2024-11-11T21:24:17.000000Z","updated_at":"2024-11-11T21:24:17.000000Z","name":"دراما"},{"id":14382,"serie_id":8001,"genre_id":10751,"created_at":"2024-11-11T21:24:17.000000Z","updated_at":"2024-11-11T21:24:17.000000Z","name":"عائلي"},{"id":14383,"serie_id":8001,"genre_id":10759,"created_at":"2024-11-11T21:24:17.000000Z","updated_at":"2024-11-11T21:24:17.000000Z","name":"حركة ومغامرة"}]},{"name":"نقطة سوداء","id":7998,"poster_path":"https://image.tmdb.org/t/p/w500/qgwSyvzvw1VIQCJdL9dTdVH0z33.jpg","vote_average":0,"newEpisodes":0,"subtitle":null,"genreslist":["دراما"],"genres":[{"id":14377,"serie_id":7998,"genre_id":18,"created_at":"2024-11-11T20:21:27.000000Z","updated_at":"2024-11-11T20:21:27.000000Z","name":"دراما"}]},{"name":"\n                             Something Undone                                                      ","id":8000,"poster_path":"http://image.tmdb.org/t/p/w500/iIqbCz4g2yJuzaw3ExLg1g34wZ6.jpg","vote_average":7,"newEpisodes":0,"subtitle":null,"genreslist":["دراما","غموض"],"genres":[{"id":14379,"serie_id":8000,"genre_id":18,"created_at":"2024-11-11T09:26:31.000000Z","updated_at":"2024-11-11T09:26:31.000000Z","name":"دراما"},{"id":14380,"serie_id":8000,"genre_id":9648,"created_at":"2024-11-11T09:26:31.000000Z","updated_at":"2024-11-11T09:26:31.000000Z","name":"غموض"}]},{"name":"\n                             The Invisible Girl                                                      ","id":7999,"poster_path":"http://image.tmdb.org/t/p/w500/3PDfVXaSjBgzIckqcM1RVjmD939.jpg","vote_average":5.6,"newEpisodes":0,"subtitle":null,"genreslist":["دراما"],"genres":[{"id":14378,"serie_id":7999,"genre_id":18,"created_at":"2024-11-11T09:24:09.000000Z","updated_at":"2024-11-11T09:24:09.000000Z","name":"دراما"}]},{"name":"Gunpowder Siege","id":7997,"poster_path":"https://image.tmdb.org/t/p/w500/tXJnXNtBXLLdZHsb9BWhtIhiC1m.jpg","vote_average":0,"newEpisodes":0,"subtitle":null,"genreslist":["دراما"],"genres":[{"id":14376,"serie_id":7997,"genre_id":18,"created_at":"2024-11-09T16:03:19.000000Z","updated_at":"2024-11-09T16:03:19.000000Z","name":"دراما"}]},{"name":"\n                             Girls Band Cry                                                    ","id":7996,"poster_path":"http://image.tmdb.org/t/p/w500/al3Q1yrhBN4A1GBLCwpgnq3RSka.jpg","vote_average":8.8,"newEpisodes":0,"subtitle":null,"genreslist":["رسوم متحركة","دراما","كوميديا"],"genres":[{"id":14373,"serie_id":7996,"genre_id":16,"created_at":"2024-11-09T11:27:42.000000Z","updated_at":"2024-11-09T11:27:42.000000Z","name":"رسوم متحركة"},{"id":14374,"serie_id":7996,"genre_id":18,"created_at":"2024-11-09T11:27:42.000000Z","updated_at":"2024-11-09T11:27:42.000000Z","name":"دراما"},{"id":14375,"serie_id":7996,"genre_id":35,"created_at":"2024-11-09T11:27:42.000000Z","updated_at":"2024-11-09T11:27:42.000000Z","name":"كوميديا"}]},{"name":"\n                             Joe vs. Carole                                                      ","id":7995,"poster_path":"http://image.tmdb.org/t/p/w500/cmqA84Zgb698myAgzbtKq8IdYJH.jpg","vote_average":4.2,"newEpisodes":0,"subtitle":null,"genreslist":["كوميديا"],"genres":[{"id":14372,"serie_id":7995,"genre_id":35,"created_at":"2024-11-09T10:43:21.000000Z","updated_at":"2024-11-09T10:43:21.000000Z","name":"كوميديا"}]},{"name":"\n                             La Fortuna                                                      ","id":7994,"poster_path":"http://image.tmdb.org/t/p/w500/nkMNmEzGCPCKUSrBeaLwJFi0SjW.jpg","vote_average":6.9,"newEpisodes":0,"subtitle":null,"genreslist":["دراما","حركة ومغامرة"],"genres":[{"id":14370,"serie_id":7994,"genre_id":18,"created_at":"2024-11-09T10:42:33.000000Z","updated_at":"2024-11-09T10:42:33.000000Z","name":"دراما"},{"id":14371,"serie_id":7994,"genre_id":10759,"created_at":"2024-11-09T10:42:33.000000Z","updated_at":"2024-11-09T10:42:33.000000Z","name":"حركة ومغامرة"}]},{"name":"\n                             Néboa                                                      ","id":7993,"poster_path":"http://image.tmdb.org/t/p/w500/mQYCzpxoUNzq5ekiygAUqanw63H.jpg","vote_average":4.7,"newEpisodes":0,"subtitle":null,"genreslist":["غموض","جريمة","دراما"],"genres":[{"id":14367,"serie_id":7993,"genre_id":9648,"created_at":"2024-11-09T10:41:53.000000Z","updated_at":"2024-11-09T10:41:53.000000Z","name":"غموض"},{"id":14368,"serie_id":7993,"genre_id":80,"created_at":"2024-11-09T10:41:53.000000Z","updated_at":"2024-11-09T10:41:53.000000Z","name":"جريمة"},{"id":14369,"serie_id":7993,"genre_id":18,"created_at":"2024-11-09T10:41:53.000000Z","updated_at":"2024-11-09T10:41:53.000000Z","name":"دراما"}]},{"name":"مسألة شرف مترجم","id":7992,"poster_path":"https://flech.tn/egybestant/public/api/series/image/Ss0ZmtYTRlK4LRSQHULLuNxTNwvBWGA9I1Z5FT5z.jpg","vote_average":0,"newEpisodes":0,"subtitle":"مترجم","genreslist":[],"genres":[]}]
/// popular_casters : [{"id":33225,"name":"Jason Statham","profile_path":"http://image.tmdb.org/t/p/w500/whNwkEQYWLFJA8ij0WyOOAD5xhQ.jpg","gender":2},{"id":18068,"name":"Keanu Reeves","profile_path":"http://image.tmdb.org/t/p/w500//4D0PpNI0kmP58hgrwGC3wCjxhnm.jpg","gender":2},{"id":11617,"name":"Jackie Chan","profile_path":"http://image.tmdb.org/t/p/w500//nraZoTzwJQPHspAVsKfgl3RXKKa.jpg","gender":2},{"id":23822,"name":"Leonardo DiCaprio","profile_path":"http://image.tmdb.org/t/p/w500/wo2hJpn04vbtmh0B9utCFdsQhxM.jpg","gender":2},{"id":10841,"name":"Johnny Depp","profile_path":"http://image.tmdb.org/t/p/w500//wcI594cwM4ArPwvRd2IU0Z0yLuh.jpg","gender":2},{"id":16072,"name":"Vin Diesel","profile_path":"http://image.tmdb.org/t/p/w500//nZdVry7lnUkE24PnXakok9okvL4.jpg","gender":2},{"id":14463,"name":"Nicolas Cage","profile_path":"http://image.tmdb.org/t/p/w500//ar33qcWbEgREn07ZpXv5Pbj8hbM.jpg","gender":2},{"id":36196,"name":"Angelina Jolie","profile_path":"http://image.tmdb.org/t/p/w500/nXA9vMvskmIDB5NqHCkTQPmemep.jpg","gender":1},{"id":14343,"name":"Ryan Reynolds","profile_path":"http://image.tmdb.org/t/p/w500//2Orm6l3z3zukF1q0AgIOUqvwLeB.jpg","gender":2},{"id":4850,"name":"Katheryn Winnick","profile_path":"http://image.tmdb.org/t/p/w500//vQSqH3ybDWZHZIqX4NZKhOCXAhQ.jpg","gender":1},{"id":11276,"name":"Kevin Hart","profile_path":"http://image.tmdb.org/t/p/w500//tpYZZchhK0cEKwvPSkS1RtTGPf6.jpg","gender":2},{"id":23370,"name":"Liam Neeson","profile_path":"http://image.tmdb.org/t/p/w500/bboldwqSC6tdw2iL6631c98l2Mn.jpg","gender":2},{"id":10099,"name":"Morgan Freeman","profile_path":"http://image.tmdb.org/t/p/w500//jPsLqiYGSofU4s6BjrxnefMfabb.jpg","gender":2},{"id":1104,"name":"Sylvester Stallone","profile_path":"http://image.tmdb.org/t/p/w500//Aprx4oBGwdTPHqlfcYbjWlCK3aI.jpg","gender":2},{"id":87,"name":"Jason Momoa","profile_path":"http://image.tmdb.org/t/p/w500//6dEFBpZH8C8OijsynkSajQT99Pb.jpg","gender":2},{"id":26285,"name":"Scarlett Johansson","profile_path":"http://image.tmdb.org/t/p/w500/3JTEc2tGUact9c0WktvpeJ9pajn.jpg","gender":1},{"id":39157,"name":"Ana de Armas","profile_path":"http://image.tmdb.org/t/p/w500/3vxvsmYLTf4jnr163SUlBIw51ee.jpg","gender":1},{"id":2274,"name":"Arnold Schwarzenegger","profile_path":"http://image.tmdb.org/t/p/w500//z6IbTtI2FWAVZE6b1V4mqEHjwO6.jpg","gender":2},{"id":18165,"name":"Hugh Jackman","profile_path":"http://image.tmdb.org/t/p/w500//jRGvUQeydg7iPeQ7BihU2vkyiWq.jpg","gender":2},{"id":902,"name":"Pedro Pascal","profile_path":"http://image.tmdb.org/t/p/w500//9VYK7oxcqhjd5LAH6ZFJ3XzOlID.jpg","gender":2}]
/// featured : [{"id":259,"featured_id":7733,"title":"The Penguin حلقة 8","poster_path":"http://image.tmdb.org/t/p/w500/vOWcqC4oDQws1doDWLO7d3dh5qc.jpg","release_date":null,"vote_average":7.8,"type":"Serie","genre":"جريمة","premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-10-28T07:48:37.000000Z","updated_at":"2024-11-11T09:47:25.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":263,"featured_id":7961,"title":"One Piece Fish-Man 2","poster_path":"https://image.tmdb.org/t/p/w500/6RASzy1kMNsiJ4luatlMWCJ8Eor.jpg","release_date":"2024-11-03","vote_average":0,"type":"Serie","genre":null,"premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-11-10T06:13:58.000000Z","updated_at":"2024-11-10T06:13:58.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":258,"featured_id":7600,"title":"From 7","poster_path":"https://web2.topcinema.cam/wp-content/uploads/2024/09/MV5BYzM5ZWMxOGEtZjEyMC00YjQ0LThiYjEtZjVkZGEzN2NlOGEwXkEyXkFqcGc@._V1_-439x650.jpg","release_date":"2022-02-20","vote_average":8.1,"type":"Serie","genre":"غموض","premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-10-20T11:14:16.000000Z","updated_at":"2024-11-03T19:14:33.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":260,"featured_id":27055,"title":"Venom: The Last Dance","poster_path":"https://image.tmdb.org/t/p/w500/7h9IaiRnZHEYLmvDeo3bJAlmPvz.jpg","release_date":"2024-10-22","vote_average":6.89,"type":"Movie","genre":"حركة","premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-10-29T11:20:35.000000Z","updated_at":"2024-10-29T11:20:35.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":257,"featured_id":26765,"title":"The Wild Robot","poster_path":"https://image.tmdb.org/t/p/w500/dJWrpKLtVg7Jt42PxKNEscMrb2L.jpg","release_date":"2024-09-12","vote_average":8.61,"type":"Movie","genre":"رسوم متحركة","premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-10-18T17:04:31.000000Z","updated_at":"2024-10-18T17:04:31.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":256,"featured_id":26704,"title":"The Platform 2","poster_path":"https://image.tmdb.org/t/p/w500/3awoWMKDfTROjGB2vivky1TCSRd.jpg","release_date":"2024-09-27","vote_average":6.6,"type":"Movie","genre":"إثارة","premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-10-04T18:54:32.000000Z","updated_at":"2024-10-04T18:54:32.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":248,"featured_id":37,"title":"The Rings of Power الأخيرة","poster_path":"https://image.tmdb.org/t/p/w500/65DUg8EWQclOnDfNWWdL5Xp6H8F.jpg","release_date":"2022-09-01","vote_average":7.55,"type":"Serie","genre":"خيال علمي وفانتازيا","premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-08-29T11:01:25.000000Z","updated_at":"2024-10-03T07:33:52.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":249,"featured_id":1989,"title":"One Piece 1120","poster_path":"https://image.tmdb.org/t/p/w500/q0mqUen18S1LaQtUtkSxrSGVoII.jpg","release_date":"1999-10-20","vote_average":6,"type":"Serie","genre":"حركة ومغامرة","premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-09-01T14:29:40.000000Z","updated_at":"2024-09-22T10:01:16.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":254,"featured_id":23759,"title":"السرب","poster_path":"https://image.tmdb.org/t/p/w500/bHsXjvIehwPpEwUhxlMFdvWyZVf.jpg","release_date":"2024-05-01","vote_average":0,"type":"Movie","genre":"حركة","premuim":0,"position":0,"enable_miniposter":1,"miniposter":"https://flech.tn/egybestan/public/api/featured/image/","custom":0,"custom_link":null,"created_at":"2024-09-18T22:12:44.000000Z","updated_at":"2024-09-18T22:12:44.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null},{"id":253,"featured_id":398,"title":"المتوحش مدبلج 185","poster_path":"https://image.tmdb.org/t/p/w500/frotUcj0HpfQmcpYFX5uoLaPlf3.jpg","release_date":"2023-09-12","vote_average":9.5,"type":"Anime","genre":"دراما","premuim":0,"position":0,"enable_miniposter":0,"miniposter":null,"custom":0,"custom_link":null,"created_at":"2024-09-16T22:43:30.000000Z","updated_at":"2024-09-16T22:43:30.000000Z","backdrop_path":null,"backdrop_path_tv":null,"quality":null}]
/// anime : [{"id":532,"name":"المفقود مدبلج","poster_path":"https://flech.tn/egybestant/public/api/animes/image/p5qKKAYwGw1ZdCmMSzNBFkvQDuTrhEYVPppkG7lL.jpg","vote_average":null,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":[],"genres":[]},{"id":531,"name":"الغرفه 309 مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/jYOcAeNQgSj7gff73Lmc2Pdd1QU.jpg","vote_average":6.1,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما","كوميديا"],"genres":[{"id":860,"anime_id":531,"genre_id":18,"created_at":"2024-11-10T14:15:52.000000Z","updated_at":"2024-11-10T14:15:52.000000Z","name":"دراما"},{"id":861,"anime_id":531,"genre_id":35,"created_at":"2024-11-10T14:15:52.000000Z","updated_at":"2024-11-10T14:15:52.000000Z","name":"كوميديا"}]},{"id":530,"name":"العشق عناداً مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/gnsNXjv4GLpuTaWsr0Rpp2xF0VO.jpg","vote_average":7,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["كوميديا"],"genres":[{"id":859,"anime_id":530,"genre_id":35,"created_at":"2024-11-07T21:44:21.000000Z","updated_at":"2024-11-07T21:44:21.000000Z","name":"كوميديا"}]},{"id":529,"name":"ابتسم لقدرك مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/5vUHQH4vxppo4pwC2GrrZujZQe7.jpg","vote_average":8,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["عائلي","دراما"],"genres":[{"id":857,"anime_id":529,"genre_id":10751,"created_at":"2024-11-06T17:58:42.000000Z","updated_at":"2024-11-06T17:58:42.000000Z","name":"عائلي"},{"id":858,"anime_id":529,"genre_id":18,"created_at":"2024-11-06T17:58:42.000000Z","updated_at":"2024-11-06T17:58:42.000000Z","name":"دراما"}]},{"id":528,"name":"الفراشات الزرقاء مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/m5IOx0C8KxgHneCh6uRttzZYLRo.jpg","vote_average":8,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما","حرب وسياسة","عائلي"],"genres":[{"id":854,"anime_id":528,"genre_id":18,"created_at":"2024-11-06T09:31:05.000000Z","updated_at":"2024-11-06T09:31:05.000000Z","name":"دراما"},{"id":855,"anime_id":528,"genre_id":10768,"created_at":"2024-11-06T09:31:05.000000Z","updated_at":"2024-11-06T09:31:05.000000Z","name":"حرب وسياسة"},{"id":856,"anime_id":528,"genre_id":10751,"created_at":"2024-11-06T09:31:05.000000Z","updated_at":"2024-11-06T09:31:05.000000Z","name":"عائلي"}]},{"id":527,"name":"حكاية خيالية مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/wpQSzP2BimpwKZAxoQcQ8nkby2J.jpg","vote_average":7.6,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما"],"genres":[{"id":853,"anime_id":527,"genre_id":18,"created_at":"2024-11-04T21:13:28.000000Z","updated_at":"2024-11-04T21:13:28.000000Z","name":"دراما"}]},{"id":526,"name":"المحارب مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/b2IvcQrcq3he4zpGcn3VFipwQDv.jpg","vote_average":9,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["حرب وسياسة"],"genres":[{"id":852,"anime_id":526,"genre_id":10768,"created_at":"2024-11-04T16:03:19.000000Z","updated_at":"2024-11-04T16:03:19.000000Z","name":"حرب وسياسة"}]},{"id":525,"name":"الماضي العزيز مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/Jwnsl1IH0G9D1GF1GK539hOvhn.jpg","vote_average":7.4,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما"],"genres":[{"id":851,"anime_id":525,"genre_id":18,"created_at":"2024-10-30T17:13:52.000000Z","updated_at":"2024-10-30T17:13:52.000000Z","name":"دراما"}]},{"id":524,"name":"اثير الحب مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/4UgrTvOg4boz4UxyWYWXSVkqtHf.jpg","vote_average":6,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما","أوبرا صابونية"],"genres":[{"id":849,"anime_id":524,"genre_id":18,"created_at":"2024-10-30T17:07:39.000000Z","updated_at":"2024-10-30T17:07:39.000000Z","name":"دراما"},{"id":850,"anime_id":524,"genre_id":10766,"created_at":"2024-10-30T17:07:39.000000Z","updated_at":"2024-10-30T17:07:39.000000Z","name":"أوبرا صابونية"}]},{"id":521,"name":"القسمة مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/v5m3PpCzIwD4gYRInzHBSej3xxc.jpg","vote_average":6,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["كوميديا","دراما"],"genres":[{"id":843,"anime_id":521,"genre_id":35,"created_at":"2024-10-28T02:09:34.000000Z","updated_at":"2024-10-28T02:09:34.000000Z","name":"كوميديا"},{"id":844,"anime_id":521,"genre_id":18,"created_at":"2024-10-28T02:09:34.000000Z","updated_at":"2024-10-28T02:09:34.000000Z","name":"دراما"}]}]
/// popularSeries : [{"id":37,"name":"The Lord of the Rings: The Rings of Power","poster_path":"https://image.tmdb.org/t/p/w500/65DUg8EWQclOnDfNWWdL5Xp6H8F.jpg","vote_average":7.55,"subtitle":null,"genreslist":["خيال علمي وفانتازيا","حركة ومغامرة","دراما"],"genres":[{"id":67,"serie_id":37,"genre_id":10765,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"خيال علمي وفانتازيا"},{"id":68,"serie_id":37,"genre_id":10759,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"حركة ومغامرة"},{"id":69,"serie_id":37,"genre_id":18,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"دراما"}]},{"id":23,"name":"She-Hulk: Attorney at Law","poster_path":"https://image.tmdb.org/t/p/w500/sSKMoXgCjtPf807cPKZbgQ6DMRD.jpg","vote_average":7.27,"subtitle":null,"genreslist":["كوميديا","خيال علمي وفانتازيا"],"genres":[{"id":42,"serie_id":23,"genre_id":35,"created_at":"2022-09-17T01:27:48.000000Z","updated_at":"2022-09-17T01:27:48.000000Z","name":"كوميديا"},{"id":43,"serie_id":23,"genre_id":10765,"created_at":"2022-09-17T01:27:48.000000Z","updated_at":"2022-09-17T01:27:48.000000Z","name":"خيال علمي وفانتازيا"}]},{"id":43,"name":"House of the Dragon","poster_path":"http://image.tmdb.org/t/p/w500/7QMsOTMUswlwxJP0rTTZfmz2tX2.jpg","vote_average":8,"subtitle":null,"genreslist":["خيال علمي وفانتازيا","دراما","حركة ومغامرة"],"genres":[{"id":79,"serie_id":43,"genre_id":10765,"created_at":"2022-09-26T05:48:50.000000Z","updated_at":"2022-09-26T05:48:50.000000Z","name":"خيال علمي وفانتازيا"},{"id":80,"serie_id":43,"genre_id":18,"created_at":"2022-09-26T05:48:50.000000Z","updated_at":"2022-09-26T05:48:50.000000Z","name":"دراما"},{"id":81,"serie_id":43,"genre_id":10759,"created_at":"2022-09-26T05:48:50.000000Z","updated_at":"2022-09-26T05:48:50.000000Z","name":"حركة ومغامرة"}]},{"id":192,"name":"Wednesday","poster_path":"https://image.tmdb.org/t/p/w500/jeGtaMwGxPmQN5xM4ClnwPQcNQz.jpg","vote_average":6,"subtitle":null,"genreslist":["خيال علمي وفانتازيا","غموض","كوميديا"],"genres":[{"id":352,"serie_id":192,"genre_id":10765,"created_at":"2022-12-03T15:49:21.000000Z","updated_at":"2022-12-03T15:49:21.000000Z","name":"خيال علمي وفانتازيا"},{"id":353,"serie_id":192,"genre_id":9648,"created_at":"2022-12-03T15:49:21.000000Z","updated_at":"2022-12-03T15:49:21.000000Z","name":"غموض"},{"id":354,"serie_id":192,"genre_id":35,"created_at":"2022-12-03T15:49:21.000000Z","updated_at":"2022-12-03T15:49:21.000000Z","name":"كوميديا"}]},{"id":3674,"name":"Law & Order: Special Victims Unit","poster_path":"https://image.tmdb.org/t/p/w500/ywBt4WKADdMVgxTR1rS2uFwMYTH.jpg","vote_average":7.97,"subtitle":null,"genreslist":["جريمة","دراما","غموض"],"genres":[{"id":7342,"serie_id":3674,"genre_id":80,"created_at":"2023-08-19T04:21:47.000000Z","updated_at":"2023-08-19T04:21:47.000000Z","name":"جريمة"},{"id":7343,"serie_id":3674,"genre_id":18,"created_at":"2023-08-19T04:21:47.000000Z","updated_at":"2023-08-19T04:21:47.000000Z","name":"دراما"},{"id":7344,"serie_id":3674,"genre_id":9648,"created_at":"2023-08-19T04:21:47.000000Z","updated_at":"2023-08-19T04:21:47.000000Z","name":"غموض"}]},{"id":4465,"name":"Law and Order","poster_path":"https://image.tmdb.org/t/p/w500/77OPlbsvX3pzoFbyfpcE3GXMCod.jpg","vote_average":7.59,"subtitle":null,"genreslist":["جريمة","دراما"],"genres":[{"id":8742,"serie_id":4465,"genre_id":80,"created_at":"2023-08-19T07:22:19.000000Z","updated_at":"2023-08-19T07:22:19.000000Z","name":"جريمة"},{"id":8743,"serie_id":4465,"genre_id":18,"created_at":"2023-08-19T07:22:19.000000Z","updated_at":"2023-08-19T07:22:19.000000Z","name":"دراما"}]},{"id":151,"name":"The Boys","poster_path":"https://image.tmdb.org/t/p/w500/cOJuiiiwPUoq4KKMrIXCPrLV5G7.jpg","vote_average":8.47,"subtitle":null,"genreslist":["خيال علمي وفانتازيا","حركة ومغامرة"],"genres":[{"id":275,"serie_id":151,"genre_id":10765,"created_at":"2022-11-11T12:03:30.000000Z","updated_at":"2022-11-11T12:03:30.000000Z","name":"خيال علمي وفانتازيا"},{"id":276,"serie_id":151,"genre_id":10759,"created_at":"2022-11-11T12:03:30.000000Z","updated_at":"2022-11-11T12:03:30.000000Z","name":"حركة ومغامرة"}]},{"id":1135,"name":"Prosecution Elite","poster_path":"https://image.tmdb.org/t/p/w500/dFH6C6j1AFOYVi5R5323s7LFCoT.jpg","vote_average":7.8,"subtitle":null,"genreslist":["دراما","غموض","جريمة"],"genres":[{"id":2112,"serie_id":1135,"genre_id":18,"created_at":"2023-06-19T18:35:56.000000Z","updated_at":"2023-06-19T18:35:56.000000Z","name":"دراما"},{"id":2113,"serie_id":1135,"genre_id":9648,"created_at":"2023-06-19T18:35:56.000000Z","updated_at":"2023-06-19T18:35:56.000000Z","name":"غموض"},{"id":2114,"serie_id":1135,"genre_id":80,"created_at":"2023-06-19T18:35:56.000000Z","updated_at":"2023-06-19T18:35:56.000000Z","name":"جريمة"}]},{"id":7096,"name":"Sword and Fairy 1","poster_path":"https://image.tmdb.org/t/p/w500/fcBO5Zgi2FAkUOl91y4F0unzO9p.jpg","vote_average":9,"subtitle":"الحلقة الأخيرة","genreslist":["خيال علمي وفانتازيا"],"genres":[{"id":12800,"serie_id":7096,"genre_id":10765,"created_at":"2024-04-20T12:56:04.000000Z","updated_at":"2024-04-20T12:56:04.000000Z","name":"خيال علمي وفانتازيا"}]},{"id":7680,"name":"America’s Got Talent","poster_path":"http://image.tmdb.org/t/p/w500/1YLiZqge79k4M0sIbiWi1ByNags.jpg","vote_average":5.66,"subtitle":null,"genreslist":["واقع"],"genres":[{"id":13805,"serie_id":7680,"genre_id":10764,"created_at":"2024-09-10T12:44:17.000000Z","updated_at":"2024-09-10T12:44:17.000000Z","name":"واقع"}]}]
/// livetv : []

HomeContentResponseModel homeContentResponseModelFromJson(String str) => HomeContentResponseModel.fromJson(json.decode(str));
String homeContentResponseModelToJson(HomeContentResponseModel data) => json.encode(data.toJson());
class HomeContentResponseModel {
  HomeContentResponseModel({
      List<Latest>? latest, 
      List<Choosed>? choosed, 
      List<Recommended>? recommended, 
      List<Thisweek>? thisweek, 
      List<Trending>? trending, 
      List<Pinned>? pinned, 
      List<Top10>? top10, 
      List<Popular>? popular, 
      List<Recents>? recents, 
      List<PopularCasters>? popularCasters, 
      List<Featured>? featured, 
      List<Anime>? anime, 
      List<PopularSeries>? popularSeries, 
      List<dynamic>? livetv,}){
    _latest = latest;
    _choosed = choosed;
    _recommended = recommended;
    _thisweek = thisweek;
    _trending = trending;
    _pinned = pinned;
    _top10 = top10;
    _popular = popular;
    _recents = recents;
    _popularCasters = popularCasters;
    _featured = featured;
    _anime = anime;
    _popularSeries = popularSeries;
    _livetv = livetv;
}

  HomeContentResponseModel.fromJson(dynamic json) {
    if (json['latest'] != null) {
      _latest = [];
      json['latest'].forEach((v) {
        _latest?.add(Latest.fromJson(v));
      });
    }
    if (json['choosed'] != null) {
      _choosed = [];
      json['choosed'].forEach((v) {
        _choosed?.add(Choosed.fromJson(v));
      });
    }
    if (json['recommended'] != null) {
      _recommended = [];
      json['recommended'].forEach((v) {
        _recommended?.add(Recommended.fromJson(v));
      });
    }
    if (json['thisweek'] != null) {
      _thisweek = [];
      json['thisweek'].forEach((v) {
        _thisweek?.add(Thisweek.fromJson(v));
      });
    }
    if (json['trending'] != null) {
      _trending = [];
      json['trending'].forEach((v) {
        _trending?.add(Trending.fromJson(v));
      });
    }
    if (json['pinned'] != null) {
      _pinned = [];
      json['pinned'].forEach((v) {
        _pinned?.add(Pinned.fromJson(v));
      });
    }
    if (json['top10'] != null) {
      _top10 = [];
      json['top10'].forEach((v) {
        _top10?.add(Top10.fromJson(v));
      });
    }
    if (json['popular'] != null) {
      _popular = [];
      json['popular'].forEach((v) {
        _popular?.add(Popular.fromJson(v));
      });
    }
    if (json['recents'] != null) {
      _recents = [];
      json['recents'].forEach((v) {
        _recents?.add(Recents.fromJson(v));
      });
    }
    if (json['popular_casters'] != null) {
      _popularCasters = [];
      json['popular_casters'].forEach((v) {
        _popularCasters?.add(PopularCasters.fromJson(v));
      });
    }
    if (json['featured'] != null) {
      _featured = [];
      json['featured'].forEach((v) {
        _featured?.add(Featured.fromJson(v));
      });
    }
    if (json['anime'] != null) {
      _anime = [];
      json['anime'].forEach((v) {
        _anime?.add(Anime.fromJson(v));
      });
    }
    if (json['popularSeries'] != null) {
      _popularSeries = [];
      json['popularSeries'].forEach((v) {
        _popularSeries?.add(PopularSeries.fromJson(v));
      });
    }
    if (json['livetv'] != null) {
      _livetv = [];
      json['livetv'].forEach((v) {
        _livetv?.add(v);
        // _livetv?.add(v);
      });
    }
  }
  List<Latest>? _latest;
  List<Choosed>? _choosed;
  List<Recommended>? _recommended;
  List<Thisweek>? _thisweek;
  List<Trending>? _trending;
  List<Pinned>? _pinned;
  List<Top10>? _top10;
  List<Popular>? _popular;
  List<Recents>? _recents;
  List<PopularCasters>? _popularCasters;
  List<Featured>? _featured;
  List<Anime>? _anime;
  List<PopularSeries>? _popularSeries;
  List<dynamic>? _livetv;
HomeContentResponseModel copyWith({  List<Latest>? latest,
  List<Choosed>? choosed,
  List<Recommended>? recommended,
  List<Thisweek>? thisweek,
  List<Trending>? trending,
  List<Pinned>? pinned,
  List<Top10>? top10,
  List<Popular>? popular,
  List<Recents>? recents,
  List<PopularCasters>? popularCasters,
  List<Featured>? featured,
  List<Anime>? anime,
  List<PopularSeries>? popularSeries,
  List<dynamic>? livetv,
}) => HomeContentResponseModel(  latest: latest ?? _latest,
  choosed: choosed ?? _choosed,
  recommended: recommended ?? _recommended,
  thisweek: thisweek ?? _thisweek,
  trending: trending ?? _trending,
  pinned: pinned ?? _pinned,
  top10: top10 ?? _top10,
  popular: popular ?? _popular,
  recents: recents ?? _recents,
  popularCasters: popularCasters ?? _popularCasters,
  featured: featured ?? _featured,
  anime: anime ?? _anime,
  popularSeries: popularSeries ?? _popularSeries,
  livetv: livetv ?? _livetv,
);
  List<Latest>? get latest => _latest;
  List<Choosed>? get choosed => _choosed;
  List<Recommended>? get recommended => _recommended;
  List<Thisweek>? get thisweek => _thisweek;
  List<Trending>? get trending => _trending;
  List<Pinned>? get pinned => _pinned;
  List<Top10>? get top10 => _top10;
  List<Popular>? get popular => _popular;
  List<Recents>? get recents => _recents;
  List<PopularCasters>? get popularCasters => _popularCasters;
  List<Featured>? get featured => _featured;
  List<Anime>? get anime => _anime;
  List<PopularSeries>? get popularSeries => _popularSeries;
  List<dynamic>? get livetv => _livetv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_latest != null) {
      map['latest'] = _latest?.map((v) => v.toJson()).toList();
    }
    if (_choosed != null) {
      map['choosed'] = _choosed?.map((v) => v.toJson()).toList();
    }
    if (_recommended != null) {
      map['recommended'] = _recommended?.map((v) => v.toJson()).toList();
    }
    if (_thisweek != null) {
      map['thisweek'] = _thisweek?.map((v) => v.toJson()).toList();
    }
    if (_trending != null) {
      map['trending'] = _trending?.map((v) => v.toJson()).toList();
    }
    if (_pinned != null) {
      map['pinned'] = _pinned?.map((v) => v.toJson()).toList();
    }
    if (_top10 != null) {
      map['top10'] = _top10?.map((v) => v.toJson()).toList();
    }
    if (_popular != null) {
      map['popular'] = _popular?.map((v) => v.toJson()).toList();
    }
    if (_recents != null) {
      map['recents'] = _recents?.map((v) => v.toJson()).toList();
    }
    if (_popularCasters != null) {
      map['popular_casters'] = _popularCasters?.map((v) => v.toJson()).toList();
    }
    if (_featured != null) {
      map['featured'] = _featured?.map((v) => v.toJson()).toList();
    }
    if (_anime != null) {
      map['anime'] = _anime?.map((v) => v.toJson()).toList();
    }
    if (_popularSeries != null) {
      map['popularSeries'] = _popularSeries?.map((v) => v.toJson()).toList();
    }
    if (_livetv != null) {
      map['livetv'] = _livetv?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 37
/// name : "The Lord of the Rings: The Rings of Power"
/// poster_path : "https://image.tmdb.org/t/p/w500/65DUg8EWQclOnDfNWWdL5Xp6H8F.jpg"
/// vote_average : 7.55
/// subtitle : null
/// genreslist : ["خيال علمي وفانتازيا","حركة ومغامرة","دراما"]
/// genres : [{"id":67,"serie_id":37,"genre_id":10765,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"خيال علمي وفانتازيا"},{"id":68,"serie_id":37,"genre_id":10759,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"حركة ومغامرة"},{"id":69,"serie_id":37,"genre_id":18,"created_at":"2022-09-17T23:27:28.000000Z","updated_at":"2022-09-17T23:27:28.000000Z","name":"دراما"}]

PopularSeries popularSeriesFromJson(String str) => PopularSeries.fromJson(json.decode(str));
String popularSeriesToJson(PopularSeries data) => json.encode(data.toJson());
class PopularSeries {
  PopularSeries({
      num? id, 
      String? name, 
      String? posterPath, 
      num? voteAverage, 
      dynamic subtitle, 
      List<String>? genreslist, 
      List<Genres>? genres,}){
    _id = id;
    _name = name;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _subtitle = subtitle;
    _genreslist = genreslist;
    _genres = genres;
}

  PopularSeries.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _subtitle = json['subtitle'];
    _genreslist = json['genreslist'] != null ? json['genreslist'].cast<String>() : [];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _posterPath;
  num? _voteAverage;
  dynamic _subtitle;
  List<String>? _genreslist;
  List<Genres>? _genres;
PopularSeries copyWith({  num? id,
  String? name,
  String? posterPath,
  num? voteAverage,
  dynamic subtitle,
  List<String>? genreslist,
  List<Genres>? genres,
}) => PopularSeries(  id: id ?? _id,
  name: name ?? _name,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  subtitle: subtitle ?? _subtitle,
  genreslist: genreslist ?? _genreslist,
  genres: genres ?? _genres,
);
  num? get id => _id;
  String? get name => _name;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  dynamic get subtitle => _subtitle;
  List<String>? get genreslist => _genreslist;
  List<Genres>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['subtitle'] = _subtitle;
    map['genreslist'] = _genreslist;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


/// id : 532
/// name : "المفقود مدبلج"
/// poster_path : "https://flech.tn/egybestant/public/api/animes/image/p5qKKAYwGw1ZdCmMSzNBFkvQDuTrhEYVPppkG7lL.jpg"
/// vote_average : null
/// is_anime : 1
/// newEpisodes : 0
/// subtitle : "مدبلج"
/// genreslist : []
/// genres : []

Anime animeFromJson(String str) => Anime.fromJson(json.decode(str));
String animeToJson(Anime data) => json.encode(data.toJson());
class Anime {
  Anime({
      num? id, 
      String? name, 
      String? posterPath, 
      dynamic voteAverage, 
      num? isAnime, 
      num? newEpisodes, 
      String? subtitle, 
      List<dynamic>? genreslist,
      List<dynamic>? genres,}){
    _id = id;
    _name = name;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _isAnime = isAnime;
    _newEpisodes = newEpisodes;
    _subtitle = subtitle;
    _genreslist = genreslist;
    _genres = genres;
}

  Anime.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _isAnime = json['is_anime'];
    _newEpisodes = json['newEpisodes'];
    _subtitle = json['subtitle'];
    if (json['genreslist'] != null) {
      _genreslist = [];
      json['genreslist'].forEach((v) {
        _genreslist?.add(v);
        // _genreslist?.add(v);
      });
    }
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(v);
        // _genres?.add(v);
      });
    }
  }
  num? _id;
  String? _name;
  String? _posterPath;
  dynamic _voteAverage;
  num? _isAnime;
  num? _newEpisodes;
  String? _subtitle;
  List<dynamic>? _genreslist;
  List<dynamic>? _genres;
Anime copyWith({  num? id,
  String? name,
  String? posterPath,
  dynamic voteAverage,
  num? isAnime,
  num? newEpisodes,
  String? subtitle,
  List<dynamic>? genreslist,
  List<dynamic>? genres,
}) => Anime(  id: id ?? _id,
  name: name ?? _name,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  isAnime: isAnime ?? _isAnime,
  newEpisodes: newEpisodes ?? _newEpisodes,
  subtitle: subtitle ?? _subtitle,
  genreslist: genreslist ?? _genreslist,
  genres: genres ?? _genres,
);
  num? get id => _id;
  String? get name => _name;
  String? get posterPath => _posterPath;
  String? get type => 'anime';
  dynamic get voteAverage => _voteAverage;
  num? get isAnime => _isAnime;
  num? get newEpisodes => _newEpisodes;
  String? get subtitle => _subtitle;
  List<dynamic>? get genreslist => _genreslist;
  List<dynamic>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['is_anime'] = _isAnime;
    map['newEpisodes'] = _newEpisodes;
    map['subtitle'] = _subtitle;
    if (_genreslist != null) {
      map['genreslist'] = _genreslist;//?.map((v) => v.toJson()).toList();
    }
    if (_genres != null) {
      map['genres'] = _genres;//?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 259
/// featured_id : 7733
/// title : "The Penguin حلقة 8"
/// poster_path : "http://image.tmdb.org/t/p/w500/vOWcqC4oDQws1doDWLO7d3dh5qc.jpg"
/// release_date : null
/// vote_average : 7.8
/// type : "Serie"
/// genre : "جريمة"
/// premuim : 0
/// position : 0
/// enable_miniposter : 0
/// miniposter : null
/// custom : 0
/// custom_link : null
/// created_at : "2024-10-28T07:48:37.000000Z"
/// updated_at : "2024-11-11T09:47:25.000000Z"
/// backdrop_path : null
/// backdrop_path_tv : null
/// quality : null

Featured featuredFromJson(String str) => Featured.fromJson(json.decode(str));
String featuredToJson(Featured data) => json.encode(data.toJson());
class Featured {
  Featured({
      num? id, 
      num? featuredId, 
      String? title, 
      String? posterPath, 
      dynamic releaseDate, 
      num? voteAverage, 
      String? type, 
      String? genre, 
      num? premuim, 
      num? position, 
      num? enableMiniposter, 
      dynamic miniposter, 
      num? custom, 
      dynamic customLink, 
      String? createdAt, 
      String? updatedAt, 
      dynamic backdropPath, 
      dynamic backdropPathTv, 
      dynamic quality,}){
    _id = id;
    _featuredId = featuredId;
    _title = title;
    _posterPath = posterPath;
    _releaseDate = releaseDate;
    _voteAverage = voteAverage;
    _type = type;
    _genre = genre;
    _premuim = premuim;
    _position = position;
    _enableMiniposter = enableMiniposter;
    _miniposter = miniposter;
    _custom = custom;
    _customLink = customLink;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _backdropPath = backdropPath;
    _backdropPathTv = backdropPathTv;
    _quality = quality;
}

  Featured.fromJson(dynamic json) {
    _id = json['id'];
    _featuredId = json['featured_id'];
    _title = json['title'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _voteAverage = json['vote_average'];
    _type = json['type'];
    _genre = json['genre'];
    _premuim = json['premuim'];
    _position = json['position'];
    _enableMiniposter = json['enable_miniposter'];
    _miniposter = json['miniposter'];
    _custom = json['custom'];
    _customLink = json['custom_link'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _backdropPath = json['backdrop_path'];
    _backdropPathTv = json['backdrop_path_tv'];
    _quality = json['quality'];
  }
  num? _id;
  num? _featuredId;
  String? _title;
  String? _posterPath;
  dynamic _releaseDate;
  num? _voteAverage;
  String? _type;
  String? _genre;
  num? _premuim;
  num? _position;
  num? _enableMiniposter;
  dynamic _miniposter;
  num? _custom;
  dynamic _customLink;
  String? _createdAt;
  String? _updatedAt;
  dynamic _backdropPath;
  dynamic _backdropPathTv;
  dynamic _quality;
Featured copyWith({  num? id,
  num? featuredId,
  String? title,
  String? posterPath,
  dynamic releaseDate,
  num? voteAverage,
  String? type,
  String? genre,
  num? premuim,
  num? position,
  num? enableMiniposter,
  dynamic miniposter,
  num? custom,
  dynamic customLink,
  String? createdAt,
  String? updatedAt,
  dynamic backdropPath,
  dynamic backdropPathTv,
  dynamic quality,
}) => Featured(  id: id ?? _id,
  featuredId: featuredId ?? _featuredId,
  title: title ?? _title,
  posterPath: posterPath ?? _posterPath,
  releaseDate: releaseDate ?? _releaseDate,
  voteAverage: voteAverage ?? _voteAverage,
  type: type ?? _type,
  genre: genre ?? _genre,
  premuim: premuim ?? _premuim,
  position: position ?? _position,
  enableMiniposter: enableMiniposter ?? _enableMiniposter,
  miniposter: miniposter ?? _miniposter,
  custom: custom ?? _custom,
  customLink: customLink ?? _customLink,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  backdropPath: backdropPath ?? _backdropPath,
  backdropPathTv: backdropPathTv ?? _backdropPathTv,
  quality: quality ?? _quality,
);
  num? get id => _id;
  num? get featuredId => _featuredId;
  String? get title => _title;
  String? get subtitle => '';
  String? get posterPath => _posterPath;
  dynamic get releaseDate => _releaseDate;
  num? get voteAverage => _voteAverage;
  String? get type => _type;
  String? get genre => _genre;
  num? get premuim => _premuim;
  num? get position => _position;
  num? get enableMiniposter => _enableMiniposter;
  dynamic get miniposter => _miniposter;
  num? get custom => _custom;
  dynamic get customLink => _customLink;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get backdropPath => _backdropPath;
  dynamic get backdropPathTv => _backdropPathTv;
  dynamic get quality => _quality;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['featured_id'] = _featuredId;
    map['title'] = _title;
    map['poster_path'] = _posterPath;
    map['release_date'] = _releaseDate;
    map['vote_average'] = _voteAverage;
    map['type'] = _type;
    map['genre'] = _genre;
    map['premuim'] = _premuim;
    map['position'] = _position;
    map['enable_miniposter'] = _enableMiniposter;
    map['miniposter'] = _miniposter;
    map['custom'] = _custom;
    map['custom_link'] = _customLink;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['backdrop_path'] = _backdropPath;
    map['backdrop_path_tv'] = _backdropPathTv;
    map['quality'] = _quality;
    return map;
  }

}

/// id : 33225
/// name : "Jason Statham"
/// profile_path : "http://image.tmdb.org/t/p/w500/whNwkEQYWLFJA8ij0WyOOAD5xhQ.jpg"
/// gender : 2

PopularCasters popularCastersFromJson(String str) => PopularCasters.fromJson(json.decode(str));
String popularCastersToJson(PopularCasters data) => json.encode(data.toJson());
class PopularCasters {
  PopularCasters({
      num? id, 
      String? name, 
      String? profilePath, 
      num? gender,}){
    _id = id;
    _name = name;
    _profilePath = profilePath;
    _gender = gender;
}

  PopularCasters.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _profilePath = json['profile_path'];
    _gender = json['gender'];
  }
  num? _id;
  String? _name;
  String? _profilePath;
  num? _gender;
PopularCasters copyWith({  num? id,
  String? name,
  String? profilePath,
  num? gender,
}) => PopularCasters(  id: id ?? _id,
  name: name ?? _name,
  profilePath: profilePath ?? _profilePath,
  gender: gender ?? _gender,
);
  num? get id => _id;
  String? get name => _name;
  String? get profilePath => _profilePath;
  num? get gender => _gender;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['profile_path'] = _profilePath;
    map['gender'] = _gender;
    return map;
  }

}

/// name : "المدينة البعيدة"
/// id : 8001
/// poster_path : "https://image.tmdb.org/t/p/w500/lGfzYV5YVCnFPULG5RjsudTPCpm.jpg"
/// vote_average : 0
/// newEpisodes : 0
/// subtitle : "مترجم"
/// genreslist : ["دراما","عائلي","حركة ومغامرة"]
/// genres : [{"id":14381,"serie_id":8001,"genre_id":18,"created_at":"2024-11-11T21:24:17.000000Z","updated_at":"2024-11-11T21:24:17.000000Z","name":"دراما"},{"id":14382,"serie_id":8001,"genre_id":10751,"created_at":"2024-11-11T21:24:17.000000Z","updated_at":"2024-11-11T21:24:17.000000Z","name":"عائلي"},{"id":14383,"serie_id":8001,"genre_id":10759,"created_at":"2024-11-11T21:24:17.000000Z","updated_at":"2024-11-11T21:24:17.000000Z","name":"حركة ومغامرة"}]

Recents recentsFromJson(String str) => Recents.fromJson(json.decode(str));
String recentsToJson(Recents data) => json.encode(data.toJson());
class Recents {
  Recents({
      String? name, 
      num? id, 
      String? posterPath, 
      num? voteAverage, 
      num? newEpisodes, 
      String? subtitle, 
      List<String>? genreslist, 
      List<Genres>? genres,}){
    _name = name;
    _id = id;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _newEpisodes = newEpisodes;
    _subtitle = subtitle;
    _genreslist = genreslist;
    _genres = genres;
}

  Recents.fromJson(dynamic json) {
    _name = json['name'];
    _id = json['id'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _newEpisodes = json['newEpisodes'];
    _subtitle = json['subtitle'];
    _genreslist = json['genreslist'] != null ? json['genreslist'].cast<String>() : [];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
  }
  String? _name;
  num? _id;
  String? _posterPath;
  num? _voteAverage;
  num? _newEpisodes;
  String? _subtitle;
  List<String>? _genreslist;
  List<Genres>? _genres;
Recents copyWith({  String? name,
  num? id,
  String? posterPath,
  num? voteAverage,
  num? newEpisodes,
  String? subtitle,
  List<String>? genreslist,
  List<Genres>? genres,
}) => Recents(  name: name ?? _name,
  id: id ?? _id,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  newEpisodes: newEpisodes ?? _newEpisodes,
  subtitle: subtitle ?? _subtitle,
  genreslist: genreslist ?? _genreslist,
  genres: genres ?? _genres,
);
  String? get name => _name;
  num? get id => _id;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  num? get newEpisodes => _newEpisodes;
  String? get subtitle => _subtitle;
  List<String>? get genreslist => _genreslist;
  List<Genres>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['id'] = _id;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['newEpisodes'] = _newEpisodes;
    map['subtitle'] = _subtitle;
    map['genreslist'] = _genreslist;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


/// title : "The Super Mario Bros 2023"
/// id : 2497
/// poster_path : "https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"
/// vote_average : 7.53
/// subtitle : "Bluray"
/// substype : 0
/// genres : [{"id":5688,"movie_id":2497,"genre_id":16,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"رسوم متحركة"},{"id":5689,"movie_id":2497,"genre_id":12,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"مغامرة"},{"id":5690,"movie_id":2497,"genre_id":10751,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"عائلي"},{"id":5691,"movie_id":2497,"genre_id":14,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"فانتازيا"},{"id":5692,"movie_id":2497,"genre_id":35,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"كوميديا"}]

Popular popularFromJson(String str) => Popular.fromJson(json.decode(str));
String popularToJson(Popular data) => json.encode(data.toJson());
class Popular {
  Popular({
      String? title, 
      num? id, 
      String? posterPath, 
      num? voteAverage, 
      String? subtitle, 
      num? substype, 
      List<Genres>? genres,}){
    _title = title;
    _id = id;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _subtitle = subtitle;
    _substype = substype;
    _genres = genres;
}

  Popular.fromJson(dynamic json) {
    _title = json['title'];
    _id = json['id'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _subtitle = json['subtitle'];
    _substype = json['substype'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
  }
  String? _title;
  num? _id;
  String? _posterPath;
  num? _voteAverage;
  String? _subtitle;
  num? _substype;
  List<Genres>? _genres;
Popular copyWith({  String? title,
  num? id,
  String? posterPath,
  num? voteAverage,
  String? subtitle,
  num? substype,
  List<Genres>? genres,
}) => Popular(  title: title ?? _title,
  id: id ?? _id,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  subtitle: subtitle ?? _subtitle,
  substype: substype ?? _substype,
  genres: genres ?? _genres,
);
  String? get title => _title;
  num? get id => _id;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  String? get subtitle => _subtitle;
  num? get substype => _substype;
  List<Genres>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['id'] = _id;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['subtitle'] = _subtitle;
    map['substype'] = _substype;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


/// id : 7268
/// name : " The Walking Dead"
/// poster_path : "https://image.tmdb.org/t/p/w500/n7PVu0hSz2sAsVekpOIoCnkWlbn.jpg"
/// vote_average : 8.12
/// pinned : 0
/// type : "serie"

Top10 top10FromJson(String str) => Top10.fromJson(json.decode(str));
String top10ToJson(Top10 data) => json.encode(data.toJson());
class Top10 {
  Top10({
      num? id, 
      String? name, 
      String? posterPath,
      num? voteAverage, 
      num? pinned, 
      String? type,}){
    _id = id;
    _name = name;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _pinned = pinned;
    _type = type;
}

  Top10.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _pinned = json['pinned'];
    _type = json['type'];
  }
  num? _id;
  String? _name;
  String? _posterPath;
  num? _voteAverage;
  num? _pinned;
  String? _type;
Top10 copyWith({  num? id,
  String? name,
  String? posterPath,
  num? voteAverage,
  num? pinned,
  String? type,
}) => Top10(  id: id ?? _id,
  name: name ?? _name,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  pinned: pinned ?? _pinned,
  type: type ?? _type,
);
  num? get id => _id;
  String? get name => _name;
  String? get subtitle => '';
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  num? get pinned => _pinned;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['pinned'] = _pinned;
    map['type'] = _type;
    return map;
  }

}

/// id : 7753
/// name : "العبقري مترجم"
/// poster_path : "https://image.tmdb.org/t/p/w500/bFEnmI6UwtiMiet4shzWtICiULm.jpg"
/// vote_average : 0
/// newEpisodes : 0
/// subtitle : "مترجم"
/// pinned : 1
/// type : "serie"

Pinned pinnedFromJson(String str) => Pinned.fromJson(json.decode(str));
String pinnedToJson(Pinned data) => json.encode(data.toJson());
class Pinned {
  Pinned({
      num? id, 
      String? name, 
      String? posterPath, 
      num? voteAverage, 
      num? newEpisodes, 
      String? subtitle, 
      num? pinned, 
      String? type,}){
    _id = id;
    _name = name;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _newEpisodes = newEpisodes;
    _subtitle = subtitle;
    _pinned = pinned;
    _type = type;
}

  Pinned.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _newEpisodes = json['newEpisodes'];
    _subtitle = json['subtitle'];
    _pinned = json['pinned'];
    _type = json['type'];
  }
  num? _id;
  String? _name;
  String? _posterPath;
  num? _voteAverage;
  num? _newEpisodes;
  String? _subtitle;
  num? _pinned;
  String? _type;
Pinned copyWith({  num? id,
  String? name,
  String? posterPath,
  num? voteAverage,
  num? newEpisodes,
  String? subtitle,
  num? pinned,
  String? type,
}) => Pinned(  id: id ?? _id,
  name: name ?? _name,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  newEpisodes: newEpisodes ?? _newEpisodes,
  subtitle: subtitle ?? _subtitle,
  pinned: pinned ?? _pinned,
  type: type ?? _type,
);
  num? get id => _id;
  String? get name => _name;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  num? get newEpisodes => _newEpisodes;
  String? get subtitle => _subtitle;
  num? get pinned => _pinned;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['newEpisodes'] = _newEpisodes;
    map['subtitle'] = _subtitle;
    map['pinned'] = _pinned;
    map['type'] = _type;
    return map;
  }

}

/// title : "The Super Mario Bros 2023"
/// id : 2497
/// poster_path : "https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"
/// vote_average : 7.53
/// subtitle : "Bluray"
/// type : "movie"
/// substype : 0
/// genres : [{"id":5688,"movie_id":2497,"genre_id":16,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"رسوم متحركة"},{"id":5689,"movie_id":2497,"genre_id":12,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"مغامرة"},{"id":5690,"movie_id":2497,"genre_id":10751,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"عائلي"},{"id":5691,"movie_id":2497,"genre_id":14,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"فانتازيا"},{"id":5692,"movie_id":2497,"genre_id":35,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"كوميديا"}]

Trending trendingFromJson(String str) => Trending.fromJson(json.decode(str));
String trendingToJson(Trending data) => json.encode(data.toJson());
class Trending {
  Trending({
      String? title, 
      num? id, 
      String? posterPath, 
      num? voteAverage, 
      String? subtitle, 
      String? type, 
      num? substype, 
      List<Genres>? genres,}){
    _title = title;
    _id = id;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _subtitle = subtitle;
    _type = type;
    _substype = substype;
    _genres = genres;
}

  Trending.fromJson(dynamic json) {
    _title = json['title'];
    _id = json['id'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _subtitle = json['subtitle'];
    _type = json['type'];
    _substype = json['substype'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
  }
  String? _title;
  num? _id;
  String? _posterPath;
  num? _voteAverage;
  String? _subtitle;
  String? _type;
  num? _substype;
  List<Genres>? _genres;
Trending copyWith({  String? title,
  num? id,
  String? posterPath,
  num? voteAverage,
  String? subtitle,
  String? type,
  num? substype,
  List<Genres>? genres,
}) => Trending(  title: title ?? _title,
  id: id ?? _id,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  subtitle: subtitle ?? _subtitle,
  type: type ?? _type,
  substype: substype ?? _substype,
  genres: genres ?? _genres,
);
  String? get title => _title;
  num? get id => _id;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  String? get subtitle => _subtitle;
  String? get type => _type;
  num? get substype => _substype;
  List<Genres>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['id'] = _id;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['subtitle'] = _subtitle;
    map['type'] = _type;
    map['substype'] = _substype;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


/// name : "فلوجة 2"
/// id : 493
/// poster_path : "https://flech.tn/egybest/public/api/series/image/yCKWP87FhqTS0QuxLgwT2fNX5wa3iT3tEFGZ8qV5.jpg"
/// vote_average : 8
/// newEpisodes : 1
/// subtitle : "الحلقة الأخيرة"
/// type : "serie"
/// genreslist : ["تونس"]
/// genres : [{"id":886,"serie_id":493,"genre_id":10775,"created_at":"2023-03-31T23:49:08.000000Z","updated_at":"2023-03-31T23:49:08.000000Z","name":"تونس"}]

Thisweek thisweekFromJson(String str) => Thisweek.fromJson(json.decode(str));
String thisweekToJson(Thisweek data) => json.encode(data.toJson());
class Thisweek {
  Thisweek({
      String? name, 
      num? id, 
      String? posterPath, 
      num? voteAverage, 
      num? newEpisodes, 
      String? subtitle, 
      String? type, 
      List<String>? genreslist, 
      List<Genres>? genres,}){
    _name = name;
    _id = id;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _newEpisodes = newEpisodes;
    _subtitle = subtitle;
    _type = type;
    _genreslist = genreslist;
    _genres = genres;
}

  Thisweek.fromJson(dynamic json) {
    _name = json['name'];
    _id = json['id'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _newEpisodes = json['newEpisodes'];
    _subtitle = json['subtitle'];
    _type = json['type'];
    _genreslist = json['genreslist'] != null ? json['genreslist'].cast<String>() : [];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
  }
  String? _name;
  num? _id;
  String? _posterPath;
  num? _voteAverage;
  num? _newEpisodes;
  String? _subtitle;
  String? _type;
  List<String>? _genreslist;
  List<Genres>? _genres;
Thisweek copyWith({  String? name,
  num? id,
  String? posterPath,
  num? voteAverage,
  num? newEpisodes,
  String? subtitle,
  String? type,
  List<String>? genreslist,
  List<Genres>? genres,
}) => Thisweek(  name: name ?? _name,
  id: id ?? _id,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  newEpisodes: newEpisodes ?? _newEpisodes,
  subtitle: subtitle ?? _subtitle,
  type: type ?? _type,
  genreslist: genreslist ?? _genreslist,
  genres: genres ?? _genres,
);
  String? get name => _name;
  num? get id => _id;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  num? get newEpisodes => _newEpisodes;
  String? get subtitle => _subtitle;
  String? get type => _type;
  List<String>? get genreslist => _genreslist;
  List<Genres>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['id'] = _id;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['newEpisodes'] = _newEpisodes;
    map['subtitle'] = _subtitle;
    map['type'] = _type;
    map['genreslist'] = _genreslist;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// title : "Uglies 2024"
/// id : 26618
/// poster_path : "https://image.tmdb.org/t/p/w500/og1SH6we0UQx5XNIDSfxDD4S1Sp.jpg"
/// vote_average : 10
/// subtitle : null
/// backdrop_path : "https://image.tmdb.org/t/p/w500/rbEsJL59iW5mr4s1YnLocEFdO3Q.jpg"
/// type : "movie"
/// substype : 0
/// genres : [{"id":54577,"movie_id":26618,"genre_id":878,"created_at":"2024-09-13T11:15:43.000000Z","updated_at":"2024-09-13T11:15:43.000000Z","name":"خيال علمي"},{"id":54578,"movie_id":26618,"genre_id":18,"created_at":"2024-09-13T11:15:43.000000Z","updated_at":"2024-09-13T11:15:43.000000Z","name":"دراما"},{"id":54579,"movie_id":26618,"genre_id":12,"created_at":"2024-09-13T11:15:43.000000Z","updated_at":"2024-09-13T11:15:43.000000Z","name":"مغامرة"}]

Recommended recommendedFromJson(String str) => Recommended.fromJson(json.decode(str));
String recommendedToJson(Recommended data) => json.encode(data.toJson());
class Recommended {
  Recommended({
      String? title, 
      num? id, 
      String? posterPath, 
      num? voteAverage, 
      dynamic subtitle, 
      String? backdropPath, 
      String? type, 
      num? substype, 
      List<Genres>? genres,}){
    _title = title;
    _id = id;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _subtitle = subtitle;
    _backdropPath = backdropPath;
    _type = type;
    _substype = substype;
    _genres = genres;
}

  Recommended.fromJson(dynamic json) {
    _title = json['title']??json['name'];
    _id = json['id'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _subtitle = json['subtitle'];
    _backdropPath = json['backdrop_path'];
    _type = json['type'];
    _substype = json['substype'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
  }
  String? _title;
  num? _id;
  String? _posterPath;
  num? _voteAverage;
  dynamic _subtitle;
  String? _backdropPath;
  String? _type;
  num? _substype;
  List<Genres>? _genres;
Recommended copyWith({  String? title,
  num? id,
  String? posterPath,
  num? voteAverage,
  dynamic subtitle,
  String? backdropPath,
  String? type,
  num? substype,
  List<Genres>? genres,
}) => Recommended(  title: title ?? _title,
  id: id ?? _id,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  subtitle: subtitle ?? _subtitle,
  backdropPath: backdropPath ?? _backdropPath,
  type: type ?? _type,
  substype: substype ?? _substype,
  genres: genres ?? _genres,
);
  String? get title => _title;
  num? get id => _id;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  dynamic get subtitle => _subtitle;
  String? get backdropPath => _backdropPath;
  String? get type => _type;
  num? get substype => _substype;
  List<Genres>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['id'] = _id;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['subtitle'] = _subtitle;
    map['backdrop_path'] = _backdropPath;
    map['type'] = _type;
    map['substype'] = _substype;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


/// title : "Yaathisai 2023"
/// id : 2710
/// poster_path : "https://image.tmdb.org/t/p/w500/eFczmRIOQqsxgcihXxpPZYWMKog.jpg"
/// vote_average : 0
/// subtitle : null
/// type : "movie"
/// substype : 0
/// genres : [{"id":6165,"movie_id":2710,"genre_id":10752,"created_at":"2023-05-12T16:01:46.000000Z","updated_at":"2023-05-12T16:01:46.000000Z","name":"حرب"},{"id":6166,"movie_id":2710,"genre_id":36,"created_at":"2023-05-12T16:01:46.000000Z","updated_at":"2023-05-12T16:01:46.000000Z","name":"تاريخ"},{"id":6167,"movie_id":2710,"genre_id":28,"created_at":"2023-05-12T16:01:46.000000Z","updated_at":"2023-05-12T16:01:46.000000Z","name":"حركة"}]

Choosed choosedFromJson(String str) => Choosed.fromJson(json.decode(str));
String choosedToJson(Choosed data) => json.encode(data.toJson());
class Choosed {
  Choosed({
      String? title, 
      num? id, 
      String? posterPath, 
      num? voteAverage, 
      dynamic subtitle, 
      String? type, 
      num? substype, 
      List<Genres>? genres,}){
    _title = title;
    _id = id;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _subtitle = subtitle;
    _type = type;
    _substype = substype;
    _genres = genres;
}

  Choosed.fromJson(dynamic json) {
    happyTimeGetIt<AppLogger>().logInfo("Choosed json $json");
    _title = json['title']??json['name'] ;
    _id = json['id'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _subtitle = json['subtitle'];
    _type = json['type'];
    _substype = json['substype'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
  }
  String? _title;
  num? _id;
  String? _posterPath;
  num? _voteAverage;
  dynamic _subtitle;
  String? _type;
  num? _substype;
  List<Genres>? _genres;
Choosed copyWith({  String? title,
  num? id,
  String? posterPath,
  num? voteAverage,
  dynamic subtitle,
  String? type,
  num? substype,
  List<Genres>? genres,
}) => Choosed(  title: title ?? _title,
  id: id ?? _id,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  subtitle: subtitle ?? _subtitle,
  type: type ?? _type,
  substype: substype ?? _substype,
  genres: genres ?? _genres,
);
  String? get title => _title;
  num? get id => _id;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  dynamic get subtitle => _subtitle;
  String? get type => _type;
  num? get substype => _substype;
  List<Genres>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['id'] = _id;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['subtitle'] = _subtitle;
    map['type'] = _type;
    map['substype'] = _substype;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// title : "Jurnal Risa by Risa Saraswati"
/// id : 27144
/// poster_path : "https://image.tmdb.org/t/p/w500/2F1TPaYdPW1hzJCXfOBOH7xK6Pd.jpg"
/// backdrop_path : "https://image.tmdb.org/t/p/w500/6C0PUdKVKe4NbOFZ7WzXSNiBneL.jpg"
/// vote_average : 4.8
/// subtitle : null
/// type : "movie"
/// substype : 0
/// genres : [{"id":55699,"movie_id":27144,"genre_id":99,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"وثائقي"},{"id":55700,"movie_id":27144,"genre_id":27,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"رعب"},{"id":55701,"movie_id":27144,"genre_id":53,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"إثارة"}]
/// downloads : []
/// substitles : []

Latest latestFromJson(String str) => Latest.fromJson(json.decode(str));
String latestToJson(Latest data) => json.encode(data.toJson());
class Latest {
  Latest({
      String? title, 
      num? id, 
      String? posterPath, 
      String? backdropPath, 
      num? voteAverage, 
      dynamic subtitle, 
      String? type, 
      num? substype, 
      List<Genres>? genres, 
      List<dynamic>? downloads, 
      List<dynamic>? substitles,}){
    _title = title;
    _id = id;
    _posterPath = posterPath;
    _backdropPath = backdropPath;
    _voteAverage = voteAverage;
    _subtitle = subtitle;
    _type = type;
    _substype = substype;
    _genres = genres;
    _downloads = downloads;
    _substitles = substitles;
}

  Latest.fromJson(dynamic json) {
    _title = json['title'];
    _id = json['id'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
    _voteAverage = json['vote_average'];
    _subtitle = json['subtitle'];
    _type = json['type'];
    _substype = json['substype'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    if (json['downloads'] != null) {
      _downloads = [];
      json['downloads'].forEach((v) {
        _downloads?.add(v);
        // _downloads?.add(v);
      });
    }
    if (json['substitles'] != null) {
      _substitles = [];
      json['substitles'].forEach((v) {
        _substitles?.add(v);
        // _substitles?.add(v);
      });
    }
  }
  String? _title;
  num? _id;
  String? _posterPath;
  String? _backdropPath;
  num? _voteAverage;
  dynamic _subtitle;
  String? _type;
  num? _substype;
  List<Genres>? _genres;
  List<dynamic>? _downloads;
  List<dynamic>? _substitles;
Latest copyWith({  String? title,
  num? id,
  String? posterPath,
  String? backdropPath,
  num? voteAverage,
  dynamic subtitle,
  String? type,
  num? substype,
  List<Genres>? genres,
  List<dynamic>? downloads,
  List<dynamic>? substitles,
}) => Latest(  title: title ?? _title,
  id: id ?? _id,
  posterPath: posterPath ?? _posterPath,
  backdropPath: backdropPath ?? _backdropPath,
  voteAverage: voteAverage ?? _voteAverage,
  subtitle: subtitle ?? _subtitle,
  type: type ?? _type,
  substype: substype ?? _substype,
  genres: genres ?? _genres,
  downloads: downloads ?? _downloads,
  substitles: substitles ?? _substitles,
);
  String? get title => _title;
  num? get id => _id;
  String? get posterPath => _posterPath;
  String? get backdropPath => _backdropPath;
  num? get voteAverage => _voteAverage;
  dynamic get subtitle => _subtitle;
  String? get type => _type;
  num? get substype => _substype;
  List<Genres>? get genres => _genres;
  List<dynamic>? get downloads => _downloads;
  List<dynamic>? get substitles => _substitles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['id'] = _id;
    map['poster_path'] = _posterPath;
    map['backdrop_path'] = _backdropPath;
    map['vote_average'] = _voteAverage;
    map['subtitle'] = _subtitle;
    map['type'] = _type;
    map['substype'] = _substype;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    if (_downloads != null) {
      map['downloads'] = _downloads?.map((v) => v.toJson()).toList();
    }
    if (_substitles != null) {
      map['substitles'] = _substitles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

