import 'dart:convert';

import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/src/shared/models/responses/GenresResponseModel.dart';

import 'casters_list.dart';
import 'episodes_list.dart';
import 'networks_list.dart';
import 'seasons_list.dart';
/// id : 5454
/// tmdb_id : 119694
/// name : "موسى"
/// original_name : "موسى"
/// imdb_external_id : ""
/// subtitle : null
/// overview : null
/// poster_path : "https://image.tmdb.org/t/p/w500/asV47sxN2zr63Plt1zzpXnPafWN.jpg"
/// backdrop_path : "https://image.tmdb.org/t/p/w200/57jBgkAp7EsQ0YgoKCImnmAHOr9.jpg"
/// trailer_url : null
/// preview_path : null
/// views : 1675
/// vote_average : 7.5
/// vote_count : 2
/// popularity : 4.45
/// featured : 0
/// pinned : 0
/// newEpisodes : 0
/// premuim : 0
/// active : 1
/// first_air_date : "2021-04-13"
/// created_at : "2022-07-22T13:38:24.000000Z"
/// updated_at : "2024-11-12T02:13:51.000000Z"
/// backdrop_path_tv : null
/// indexCheck : "ADD"
/// genreslist : ["دراما"]
/// casterslist : [{"id":301,"name":"Mohamed Ramadan","original_name":"Mohamed Ramadan","profile_path":"http://image.tmdb.org/t/p/w500//kbGkIR3pGj7bLlYko1AOKzLrjRI.jpg"},{"id":642,"name":"Sayed Ragab","original_name":"Sayed Ragab","profile_path":"http://image.tmdb.org/t/p/w500//r6zPbQX4Rj4Y1ynk5Ym4kfdYBpq.jpg"},{"id":271,"name":"Amr Abdel Gelil","original_name":"Amr Abdel Gelil","profile_path":"http://image.tmdb.org/t/p/w500//q7faQwMlN03QLJ29RXZImV1lXOM.jpg"},{"id":15927,"name":"Monzer Rayahneh","original_name":"Munther Rayahneh","profile_path":"http://image.tmdb.org/t/p/w500//q1xmfR17m3MdYXcoD1kIkW6Nx2Z.jpg"},{"id":285,"name":"Ryad El Kholy","original_name":"Ryad El Kholy","profile_path":"http://image.tmdb.org/t/p/w500//wLxEujKCEvcACU1Vsc2Wa1vPC3Q.jpg"},{"id":563,"name":"Asmaa Galal","original_name":"Asmaa Galal","profile_path":"http://image.tmdb.org/t/p/w500//7693taWWq3QkNjImgoZtt0idO1h.jpg"},{"id":15928,"name":"Somaya El Khashab","original_name":"Somaya El Khashab","profile_path":"http://image.tmdb.org/t/p/w500//6wQHhxJ78ScdYbm8IsTSEtxvKgu.jpg"}]
/// networkslist : [{"id":3626,"name":"Shahid","logo_path":"http://image.tmdb.org/t/p/w500/X37sqYsNaok8iZXzJpvFbNSJHe.png","origin_country":"AE","created_at":"2026-01-01T14:34:12.000000Z","updated_at":"2024-03-10T07:01:56.000000Z"},{"id":3070,"name":"DMC","logo_path":"http://image.tmdb.org/t/p/w500/8fKQ88EOJ6qmgaoPsPJv3isN9VC.png","origin_country":"EG","created_at":"2022-10-10T06:13:13.000000Z","updated_at":"2023-06-12T17:59:41.000000Z"},{"id":963,"name":"MBC 1","logo_path":"http://image.tmdb.org/t/p/w500/oG6DMW1SajkvYpbMAZ9m2LZURYx.png","origin_country":"AE","created_at":"2022-10-10T06:13:13.000000Z","updated_at":"2022-10-10T06:13:13.000000Z"},{"id":6922,"name":"مصر","logo_path":null,"origin_country":null,"created_at":"2023-08-11T10:36:51.000000Z","updated_at":"2023-08-11T10:36:51.000000Z"},{"id":7007,"name":"مسلسلات عربية","logo_path":"https://flech.tn/egybest/public/api/movies/image/LxEAvPZw3QeUMVIfjaXs82PIoMMb3YyFH4YSbgEd.png","origin_country":"Ar","created_at":"2030-06-10T16:18:09.000000Z","updated_at":"2024-03-10T04:20:02.000000Z"},{"id":7007,"name":"مسلسلات عربية","logo_path":"https://flech.tn/egybest/public/api/movies/image/LxEAvPZw3QeUMVIfjaXs82PIoMMb3YyFH4YSbgEd.png","origin_country":"Ar","created_at":"2030-06-10T16:18:09.000000Z","updated_at":"2024-03-10T04:20:02.000000Z"}]
/// genres : [{"id":10124,"serie_id":5454,"genre_id":18,"created_at":"2023-08-20T14:28:27.000000Z","updated_at":"2023-08-20T14:28:27.000000Z","name":"دراما"}]
/// seasons : [{"id":9122,"tmdb_id":183548,"serie_id":5454,"season_number":1,"name":"الموسم 1","overview":null,"poster_path":"http://image.tmdb.org/t/p/w500/ly98AZmq0nH1yen7De5vH5IST0F.jpg","air_date":"2021-04-13","created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","episodes":[{"id":142179,"tmdb_id":2761029,"season_id":9122,"episode_number":1,"name":"الحلقة 1","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/19fsB.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-13","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277537,"episode_id":142179,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-7yhwmhagzg91.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277538,"episode_id":142179,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-eftaqtncxw84.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277539,"episode_id":142179,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-a3o0iyuq2938.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142180,"tmdb_id":2848498,"season_id":9122,"episode_number":2,"name":"الحلقة 2","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/w3Ttc.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-14","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277532,"episode_id":142180,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-nk6ri5j5oc9p.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277533,"episode_id":142180,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-68kwk35gtf5o.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277534,"episode_id":142180,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-5u6wndhbx9zx.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142181,"tmdb_id":2848499,"season_id":9122,"episode_number":3,"name":"الحلقة 3","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/rDSRw.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-15","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277529,"episode_id":142181,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-4blh9j65unmx.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277530,"episode_id":142181,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-lyd0suchtvnf.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277531,"episode_id":142181,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-35rmwu0wgmyp.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142182,"tmdb_id":2848500,"season_id":9122,"episode_number":4,"name":"الحلقة 4","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/POszf.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-16","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277524,"episode_id":142182,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-lda3eqq4b9se.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277525,"episode_id":142182,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-qqi1amihtpce.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277526,"episode_id":142182,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-pvl7pqxg3eaa.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142183,"tmdb_id":2848501,"season_id":9122,"episode_number":5,"name":"الحلقة 5","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/BrV1j.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-17","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277519,"episode_id":142183,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-nilz6bw2200w.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277520,"episode_id":142183,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-d9x9hc8wjyiz.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277521,"episode_id":142183,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-gmdpa095bezf.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142184,"tmdb_id":2848502,"season_id":9122,"episode_number":6,"name":"الحلقة 6","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/BOwzI.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-18","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277514,"episode_id":142184,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-kkzz1q7y3hsm.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277515,"episode_id":142184,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-cmoohiemtpgn.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277516,"episode_id":142184,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-0lha3nin08k5.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142185,"tmdb_id":2848503,"season_id":9122,"episode_number":7,"name":"الحلقة 7","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/PjiTv.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-19","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277509,"episode_id":142185,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-7syzrp6n2hmx.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277510,"episode_id":142185,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-4hem2pdrstkg.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277511,"episode_id":142185,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-snywqtywrcrl.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142186,"tmdb_id":2848504,"season_id":9122,"episode_number":8,"name":"الحلقة 8","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/S9XZc.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-20","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277504,"episode_id":142186,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-ipslkq0rpbey.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277505,"episode_id":142186,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-x7i3paqwwikq.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277506,"episode_id":142186,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-rl3axh69aaxx.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142187,"tmdb_id":2848505,"season_id":9122,"episode_number":9,"name":"الحلقة 9","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/Lg8lO.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-21","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277499,"episode_id":142187,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-lazkj30aelp0.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277500,"episode_id":142187,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-12z4kov00gc8.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277501,"episode_id":142187,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-gocbaeqh6xcw.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142188,"tmdb_id":2848507,"season_id":9122,"episode_number":10,"name":"الحلقة 10","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/Dskcd.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-22","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277492,"episode_id":142188,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-yeuby7l5bs04.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277493,"episode_id":142188,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-iatrp7ma7uos.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277494,"episode_id":142188,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-umaa8yfeqpn6.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142189,"tmdb_id":2848508,"season_id":9122,"episode_number":11,"name":"الحلقة 11","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/ywIif.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-23","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277489,"episode_id":142189,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-1ieup9tr9kmf.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277490,"episode_id":142189,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-dxr9xyh1acgb.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277491,"episode_id":142189,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-lfn745edcvwr.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142190,"tmdb_id":2848509,"season_id":9122,"episode_number":12,"name":"الحلقة 12","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/R75BH.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-24","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277486,"episode_id":142190,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-ac40lf6xnaxy.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277487,"episode_id":142190,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-5gl6j0tspmzl.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277488,"episode_id":142190,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-m6fexmim7q9l.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142191,"tmdb_id":2848510,"season_id":9122,"episode_number":13,"name":"الحلقة 13","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/u3DKj.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-25","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277483,"episode_id":142191,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-zcdhebpwnbqf.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277484,"episode_id":142191,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-6cdjzk92mnmz.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277485,"episode_id":142191,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-rjcfbqx3nzae.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142192,"tmdb_id":2848511,"season_id":9122,"episode_number":14,"name":"الحلقة 14","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/5d0vT.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-26","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277480,"episode_id":142192,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-ctvkfl5yp033.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277481,"episode_id":142192,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-vux2qew1ng8w.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277482,"episode_id":142192,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-tecisdfisne3.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142193,"tmdb_id":2848513,"season_id":9122,"episode_number":15,"name":"الحلقة 15","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/WwltS.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-27","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277477,"episode_id":142193,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-jmw23epngxpc.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277478,"episode_id":142193,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-w7k7087awbna.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277479,"episode_id":142193,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-uxj3jbu1jzop.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142194,"tmdb_id":2848515,"season_id":9122,"episode_number":16,"name":"الحلقة 16","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/Z5uA9.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-28","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277474,"episode_id":142194,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-87zwf2pv53yy.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277475,"episode_id":142194,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-z0aepddfdy6d.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277476,"episode_id":142194,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-xim51e325ag9.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142195,"tmdb_id":2848517,"season_id":9122,"episode_number":17,"name":"الحلقة 17","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/PqEMB.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-29","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277471,"episode_id":142195,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-q0xoooqjizr3.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277472,"episode_id":142195,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-nrhf379o3moq.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277473,"episode_id":142195,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-9di39t6ri0bk.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142196,"tmdb_id":2848519,"season_id":9122,"episode_number":18,"name":"الحلقة 18","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/JUaWT.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-04-30","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277468,"episode_id":142196,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-cde2jhg0jvg5.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277469,"episode_id":142196,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-mis0x06gc0vz.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277470,"episode_id":142196,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-npdhowatn58h.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142197,"tmdb_id":2848521,"season_id":9122,"episode_number":19,"name":"الحلقة 19","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/GSw7O.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-01","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277465,"episode_id":142197,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-mfybki66bqxs.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277466,"episode_id":142197,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-u3cqny5o6580.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277467,"episode_id":142197,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-kjqjf0ffdaws.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142198,"tmdb_id":2848523,"season_id":9122,"episode_number":20,"name":"الحلقة 20","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/HkLzh.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-02","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277462,"episode_id":142198,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-evfuhwapro6r.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277463,"episode_id":142198,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-24f23scswc5s.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277464,"episode_id":142198,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-5eo5n91lr4bs.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142199,"tmdb_id":2848525,"season_id":9122,"episode_number":21,"name":"الحلقة 21","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/vurYr.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-03","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277459,"episode_id":142199,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-nhhsp3z3mpij.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277460,"episode_id":142199,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-5k07fv1233k5.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277461,"episode_id":142199,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-pxdgxlhfaveh.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142200,"tmdb_id":2848527,"season_id":9122,"episode_number":22,"name":"الحلقة 22","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/VA1DA.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-04","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277456,"episode_id":142200,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-hcn35nkmvbbw.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277457,"episode_id":142200,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-fbjz4nip0h18.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277458,"episode_id":142200,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-aud89yep6f6d.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142201,"tmdb_id":2848528,"season_id":9122,"episode_number":23,"name":"الحلقة 23","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/rieSX.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-05","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277453,"episode_id":142201,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-tq5suhnuxe3p.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277454,"episode_id":142201,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-pz5v4np2g6sm.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277455,"episode_id":142201,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-7qp3ur6kf5ar.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142202,"tmdb_id":2848529,"season_id":9122,"episode_number":24,"name":"الحلقة 24","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/5hiBA.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-06","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277450,"episode_id":142202,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-oi4qodqd9711.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277451,"episode_id":142202,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-fkhquo5x3y7h.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277452,"episode_id":142202,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-bm7u19tpes9x.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142203,"tmdb_id":2848530,"season_id":9122,"episode_number":25,"name":"الحلقة 25","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/CvXZH.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-07","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277447,"episode_id":142203,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-7xi4bw1d2dyu.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277448,"episode_id":142203,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-4z8m69oikbrc.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277449,"episode_id":142203,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-23lwudzkhb87.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142204,"tmdb_id":2848531,"season_id":9122,"episode_number":26,"name":"الحلقة 26","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/jAtZI.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-08","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277444,"episode_id":142204,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-9lwgf4jt7uiq.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277445,"episode_id":142204,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-78zi5s4exjuh.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277446,"episode_id":142204,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-0vha6b7w3iga.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142205,"tmdb_id":2848532,"season_id":9122,"episode_number":27,"name":"الحلقة 27","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/ZoOSQ.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-09","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277441,"episode_id":142205,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-2vk3hu4y00qy.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277442,"episode_id":142205,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-9pce32ximh57.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277443,"episode_id":142205,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-q2416jowuran.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142206,"tmdb_id":2848533,"season_id":9122,"episode_number":28,"name":"الحلقة 28","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/tr7hJ.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-10","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277438,"episode_id":142206,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-aeh7eprbfel9.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277439,"episode_id":142206,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-kr3hg71mn37v.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277440,"episode_id":142206,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-9betdwxqmvjd.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142207,"tmdb_id":2848534,"season_id":9122,"episode_number":29,"name":"الحلقة 29","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/MgxQq.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-11","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277435,"episode_id":142207,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-jzjlnfq1v95v.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277436,"episode_id":142207,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-p7cbtdpm6ltd.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277437,"episode_id":142207,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-41tuf2l2e2wp.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":142208,"tmdb_id":2848535,"season_id":9122,"episode_number":30,"name":"الحلقة 30","overview":null,"still_path":"https://img.downet.net/thumb/320x190/uploads/eQYor.jpg","vote_average":0,"vote_count":0,"views":0,"air_date":"2021-05-12","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":277432,"episode_id":142208,"server":"720p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-9fniopzhetxn.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277433,"episode_id":142208,"server":"480p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-mi1rpof8hk19.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":277434,"episode_id":142208,"server":"1080p","header":"https://m.reviewrate.net/","useragent":null,"link":"https://arabseed.com/embed-vw5yvdkuzb6y.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]}]}]

SeriesShowApiResponseModel seriesShowApiResponseModelFromJson(String str) => SeriesShowApiResponseModel.fromJson(json.decode(str));
String seriesShowApiResponseModelToJson(SeriesShowApiResponseModel data) => json.encode(data.toJson());
class SeriesShowApiResponseModel {
  SeriesShowApiResponseModel({
      num? id, 
      num? tmdbId, 
      String? name, 
      String? originalName, 
      String? imdbExternalId, 
      dynamic subtitle, 
      dynamic overview, 
      String? posterPath, 
      String? backdropPath, 
      dynamic trailerUrl, 
      dynamic previewPath, 
      num? views, 
      num? voteAverage, 
      num? voteCount, 
      num? popularity, 
      num? featured, 
      num? pinned, 
      num? newEpisodes, 
      num? premuim, 
      num? active, 
      String? firstAirDate, 
      String? createdAt, 
      String? updatedAt, 
      dynamic backdropPathTv, 
      String? indexCheck, 
      List<String>? genreslist, 
      List<Casterslist>? casterslist, 
      List<Networkslist>? networkslist, 
      List<Genres>? genres, 
      List<Seasons>? seasons,}){
    _id = id;
    _tmdbId = tmdbId;
    _name = name;
    _originalName = originalName;
    _imdbExternalId = imdbExternalId;
    _subtitle = subtitle;
    _overview = overview;
    _posterPath = posterPath;
    _backdropPath = backdropPath;
    _trailerUrl = trailerUrl;
    _previewPath = previewPath;
    _views = views;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
    _popularity = popularity;
    _featured = featured;
    _pinned = pinned;
    _newEpisodes = newEpisodes;
    _premuim = premuim;
    _active = active;
    _firstAirDate = firstAirDate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _backdropPathTv = backdropPathTv;
    _indexCheck = indexCheck;
    _genreslist = genreslist;
    _casterslist = casterslist;
    _networkslist = networkslist;
    _genres = genres;
    _seasons = seasons;
}

  SeriesShowApiResponseModel.fromJson(dynamic json) {
    _id = json['id'];
    _tmdbId = json['tmdb_id'];
    _name = json['name'];
    _originalName = json['original_name'];
    _imdbExternalId = json['imdb_external_id'];
    _subtitle = json['subtitle'];
    _overview = json['overview'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
    _trailerUrl = json['trailer_url'];
    _previewPath = json['preview_path'];
    _views = json['views'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
    _popularity = json['popularity'];
    _featured = json['featured'];
    _pinned = json['pinned'];
    _newEpisodes = json['newEpisodes'];
    _premuim = json['premuim'];
    _active = json['active'];
    _firstAirDate = json['first_air_date'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _backdropPathTv = json['backdrop_path_tv'];
    _indexCheck = json['indexCheck'];
    _genreslist = json['genreslist'] != null ? json['genreslist'].cast<String>() : [];
    if (json['casterslist'] != null) {
      _casterslist = [];
      json['casterslist'].forEach((v) {
        _casterslist?.add(Casterslist.fromJson(v));
      });
    }
    if (json['networkslist'] != null) {
      _networkslist = [];
      json['networkslist'].forEach((v) {
        _networkslist?.add(Networkslist.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    if (json['seasons'] != null) {
      _seasons = [];
      json['seasons'].forEach((v) {
        _seasons?.add(Seasons.fromJson(v));
      });
    }
  }
  num? _id;
  num? _tmdbId;
  String? _name;
  String? _originalName;
  String? _imdbExternalId;
  dynamic _subtitle;
  dynamic _overview;
  String? _posterPath;
  String? _backdropPath;
  dynamic _trailerUrl;
  dynamic _previewPath;
  num? _views;
  num? _voteAverage;
  num? _voteCount;
  num? _popularity;
  num? _featured;
  num? _pinned;
  num? _newEpisodes;
  num? _premuim;
  num? _active;
  String? _firstAirDate;
  String? _createdAt;
  String? _updatedAt;
  dynamic _backdropPathTv;
  String? _indexCheck;
  List<String>? _genreslist;
  List<Casterslist>? _casterslist;
  List<Networkslist>? _networkslist;
  List<Genres>? _genres;
  List<Seasons>? _seasons;
SeriesShowApiResponseModel copyWith({  num? id,
  num? tmdbId,
  String? name,
  String? originalName,
  String? imdbExternalId,
  dynamic subtitle,
  dynamic overview,
  String? posterPath,
  String? backdropPath,
  dynamic trailerUrl,
  dynamic previewPath,
  num? views,
  num? voteAverage,
  num? voteCount,
  num? popularity,
  num? featured,
  num? pinned,
  num? newEpisodes,
  num? premuim,
  num? active,
  String? firstAirDate,
  String? createdAt,
  String? updatedAt,
  dynamic backdropPathTv,
  String? indexCheck,
  List<String>? genreslist,
  List<Casterslist>? casterslist,
  List<Networkslist>? networkslist,
  List<Genres>? genres,
  List<Seasons>? seasons,
}) => SeriesShowApiResponseModel(  id: id ?? _id,
  tmdbId: tmdbId ?? _tmdbId,
  name: name ?? _name,
  originalName: originalName ?? _originalName,
  imdbExternalId: imdbExternalId ?? _imdbExternalId,
  subtitle: subtitle ?? _subtitle,
  overview: overview ?? _overview,
  posterPath: posterPath ?? _posterPath,
  backdropPath: backdropPath ?? _backdropPath,
  trailerUrl: trailerUrl ?? _trailerUrl,
  previewPath: previewPath ?? _previewPath,
  views: views ?? _views,
  voteAverage: voteAverage ?? _voteAverage,
  voteCount: voteCount ?? _voteCount,
  popularity: popularity ?? _popularity,
  featured: featured ?? _featured,
  pinned: pinned ?? _pinned,
  newEpisodes: newEpisodes ?? _newEpisodes,
  premuim: premuim ?? _premuim,
  active: active ?? _active,
  firstAirDate: firstAirDate ?? _firstAirDate,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  backdropPathTv: backdropPathTv ?? _backdropPathTv,
  indexCheck: indexCheck ?? _indexCheck,
  genreslist: genreslist ?? _genreslist,
  casterslist: casterslist ?? _casterslist,
  networkslist: networkslist ?? _networkslist,
  genres: genres ?? _genres,
  seasons: seasons ?? _seasons,
);
  num? get id => _id;
  num? get tmdbId => _tmdbId;
  String? get name => _name;
  String? get originalName => _originalName;
  String? get imdbExternalId => _imdbExternalId;
  dynamic get subtitle => _subtitle;
  dynamic get overview => _overview;
  String? get posterPath => _posterPath;
  String? get backdropPath => _backdropPath;
  dynamic get trailerUrl => _trailerUrl;
  dynamic get previewPath => _previewPath;
  num? get views => _views;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;
  num? get popularity => _popularity;
  num? get featured => _featured;
  num? get pinned => _pinned;
  num? get newEpisodes => _newEpisodes;
  num? get premuim => _premuim;
  num? get active => _active;
  String? get firstAirDate => _firstAirDate;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get backdropPathTv => _backdropPathTv;
  String? get indexCheck => _indexCheck;
  List<String>? get genreslist => _genreslist;
  List<Casterslist>? get casterslist => _casterslist;
  List<Networkslist>? get networkslist => _networkslist;
  List<Genres>? get genres => _genres;
  List<Seasons>? get seasons => _seasons;

  MediaDetailsEntity mapToEntity() =>MediaDetailsEntity(  id: id ?? _id,
    tmdbId: tmdbId ?? _tmdbId,
    name: name ?? _name,
    originalName: originalName ?? _originalName,
    imdbExternalId: imdbExternalId ?? _imdbExternalId,
    subtitle: subtitle ?? _subtitle,
    overview: overview ?? _overview,
    posterPath: posterPath ?? _posterPath,
    backdropPath: backdropPath ?? _backdropPath,
    trailerUrl: trailerUrl ?? _trailerUrl,
    previewPath: previewPath ?? _previewPath,
    views: views ?? _views,
    voteAverage: voteAverage ?? _voteAverage,
    voteCount: voteCount ?? _voteCount,
    popularity: popularity ?? _popularity,
    featured: featured ?? _featured,
    pinned: pinned ?? _pinned,
    newEpisodes: newEpisodes ?? _newEpisodes,
    premuim: premuim ?? _premuim,
    active: active ?? _active,
    firstAirDate: firstAirDate ?? _firstAirDate,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
    backdropPathTv: backdropPathTv ?? _backdropPathTv,
    indexCheck: indexCheck ?? _indexCheck,
    genreslist: genreslist ?? _genreslist,
    casterslist: casterslist ?? _casterslist,
    networkslist: networkslist ?? _networkslist,
    genres: genres ?? _genres,
    seasons: seasons ?? _seasons,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['tmdb_id'] = _tmdbId;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['imdb_external_id'] = _imdbExternalId;
    map['subtitle'] = _subtitle;
    map['overview'] = _overview;
    map['poster_path'] = _posterPath;
    map['backdrop_path'] = _backdropPath;
    map['trailer_url'] = _trailerUrl;
    map['preview_path'] = _previewPath;
    map['views'] = _views;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    map['popularity'] = _popularity;
    map['featured'] = _featured;
    map['pinned'] = _pinned;
    map['newEpisodes'] = _newEpisodes;
    map['premuim'] = _premuim;
    map['active'] = _active;
    map['first_air_date'] = _firstAirDate;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['backdrop_path_tv'] = _backdropPathTv;
    map['indexCheck'] = _indexCheck;
    map['genreslist'] = _genreslist;
    if (_casterslist != null) {
      map['casterslist'] = _casterslist?.map((v) => v.toJson()).toList();
    }
    if (_networkslist != null) {
      map['networkslist'] = _networkslist?.map((v) => v.toJson()).toList();
    }
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    if (_seasons != null) {
      map['seasons'] = _seasons?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

