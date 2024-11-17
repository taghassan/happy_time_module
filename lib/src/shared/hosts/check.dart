
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:html/parser.dart' as parser;




import 'KobatubeEasyPlex.dart';
import 'VidSrcExtractorActivity.dart';
import 'VidtubeLinkHelper.dart';
class UrlExtractor {
  final bool useRemote;
  final Function(dynamic) onComplete;

  UrlExtractor({required this.useRemote, required this.onComplete});

  bool _check(String regex, String string) {
    final pattern = RegExp(regex, caseSensitive: false);
    return pattern.hasMatch(string);
  }

  void find(String url) {
    if (useRemote) {
      _onLaunchRemoteRegex(url);
    } else {
      // Define regex patterns


      const String fasoula ="https?:\\/\\/(([0-9a-zA-Z]+)\\.)?(fasoul)\\.[^\\/,^\\.]{2,}\\/.+";
      const String bostream =
          "https?:\\/\\/(www\\.)?(bostream|xkanga|easyplayer|vps.putmovies.com|vps.art|putmovies|streamfree|disk.yandex|my.mail|streamhide|streamhub|dknhst|vidhidepro|vidhidevip|archive)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vidtube =
          "https?:\\/\\/(www\\.)?(vidtube)\\.[^\\/,^\\.]{2,}\\/.+";
      const String dooosub =
          "https?:\\/\\/(www\\.)?(dooosub)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vupload =
          "https?:\\/\\/(www\\.)?(vupload|faselhd)\\.[^\\/,^\\.]{2,}\\/.+";
      const String upstream =
          "https?:\\/\\/(www\\.)?(upstream)\\.[^\\/,^\\.]{2,}\\/.+";
      const String dramacool =
          "https?:\\/\\/(www\\.)?(playr.dramacool)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vedsharr =
          "https?:\\/\\/(www\\.)?(vedsharr)\\.[^\\/,^\\.]{2,}\\/.+";
      const String basevid =
          "https?:\\/\\/(www\\.)?(mwdy|miravd|vidroba)\\.[^\\/,^\\.]{2,}\\/.+";
      const String basevid2 =
          "https?:\\/\\/(www\\.)?(vidspeeds|anavidz|anafasts|vidbam|vadbom|voe|lorimuchbenefit|evelynthankregion|robertplacespace|shannonpersonalcost|yodelswartlike|voe-unblock|vidshar|sizyreelingly|rationalityaloelike|vidoba|v.albrq|vidspeed|w.anaturk)\\.[^\\/,^\\.]{2,}\\/.+";
      const String moshahda =
          "https?:\\/\\/(www\\.)?(moshahda)\\.[^\\/,^\\.]{2,}\\/.+";
      const String asianembed =
          "https?:\\/\\/(www\\.)?(asianembed|gogoplay)\\.[^\\/,^\\.]{2,}\\/.+";
      const String kobatube =
          "https?:\\/\\/(www\\.)?(kobatube|userscloud)\\.[^\\/,^\\.]{2,}\\/.+";
      const String uqload =
          "https?:\\/\\/(www\\.)?(uqload)\\.[^\\/,^\\.]{2,}\\/.+";
      const String arabseed =
          "https?:\\/\\/(www\\.)?(arabseed)\\.[^\\/,^\\.]{2,}\\/.+";
      const String streamtape =
          "https?:\\/\\/(www\\.)?(strcloud|strtapeadblock|streamtape|stape|scloud|dood|dooood|doodstream.com|megaflix|embedwish)\\.[^\\/,^\\.]{2,}\\/.+";
      const String femax20 =
          "https?:\\/\\/(www\\.)?(femax20|kawaiifansub|otcplay|mifilm|ff-dns|pp-dns|ll-dns|psadns|suzihaza|manasx|kotakajair|mycineplay|diampokusy|oracleclouds|vanfem|gdstream|purefiles|7pow|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String pocketnow =
          "https?:\\/\\/(www\\.)?(pocketnow|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String gdstream =
          "https?:\\/\\/(www\\.)?(gdstream|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String multiquality =
          "https?:\\/\\/(www\\.)?(multiquality|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String easyplex =
          "https?:\\/\\/(www\\.)?(easyplex|easyplayer)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String playto1 =
          "https?:\\/\\/(www\\.)?(playto1|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String sbplay =
          "https?:\\/\\/(www\\.)?(sbplay|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String diasfem =
          "https?:\\/\\/(www\\.)?(diasfem|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String saruch =
          "https?:\\/\\/(www\\.)?(saruch)\\.[^\\/,^\\.]{2,}\\/.+";
      const String mrdhan =
          "https?:\\/\\/(www\\.)?(mrdhan|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String gavid =
          "https?:\\/\\/(www\\.)?(gavid|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String kanavid =
          "https?:\\/\\/(www\\.)?(kanavid|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String iplhd =
          "https?:\\/\\/(www\\.)?(iplhd|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String zapurl =
          "https?:\\/\\/(www\\.)?(zapurl|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String dutrag =
          "https?:\\/\\/(www\\.)?(dutrag|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String vimeo = "https?:\\/\\/(www\\.)?(vimeo)\\.[^\\/,^\\.]{2,}.+";
      const String fourShared =
          "https?:\\/\\/(www\\.)?(4shared\\.com)\\/(video|web\\/embed)\\/.+";
      const String bitTube =
          "https?:\\/\\/(www\\.)?(bittube\\.video\\/videos)\\/(watch|embed)\\/.+";
      const String fembed =
          "https?:\\/\\/(www\\.)?(fembed|vcdn)\\.[^\\/,^\\.]{2,}\\/(v|f)\\/.+";
      const String fansubs =
          "https?:\\/\\/(www\\.)?(fansubs\\.tv)\\/(v|watch)\\/.+";
      const String uptostream =
          "https?:\\/\\/(www\\.)?(uptostream|uptobox)\\.[^\\/,^\\.]{2,}.+";
      const String solidfiles =
          "https?:\\/\\/(www\\.)?(solidfiles)\\.[^\\/,^\\.]{2,}\\/(v)\\/.+";
      const String okru =
          "https?:\\/\\/(www.|m.)?(ok)\\.[^\\/,^\\.]{2,}\\/(video|videoembed)\\/.+";
      const String mediafire =
          "https?:\\/\\/(www\\.)?(mediafire)\\.[^\\/,^\\.]{2,}\\/(file)\\/.+";
      const String sendvid =
          "https?:\\/\\/(www\\.)?(sendvid)\\.[^\\/,^\\.]{2,}\\/.+";
      const String filerio =
          "https?:\\/\\/(www\\.)?(filerio)\\.[^\\/,^\\.]{2,}\\/.+";
      const String mp4upload =
          "https?:\\/\\/(www\\.)?(mp4upload|streamzz)\\.[^\\/,^\\.]{2,}\\/.+";
      const String myviid =
          "https?:\\/\\/(www\\.)?(myviid)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vidhd =
          "https?:\\/\\/(www\\.)?(vidhd|vedbom|vedshare)\\.[^\\/,^\\.]{2,}\\/.+";
      const String pandafiles =
          "https?:\\/\\/(www\\.)?(pandafiles)\\.[^\\/,^\\.]{2,}\\/.+";
      const String zplayer =
          "https?:\\/\\/(v2\\.)?(zplayer)\\.[^\\/,^\\.]{2,}\\/.+";
      const String filemoon =
          "https?:\\/\\/(www\\.)?(filemoon|kerapoxy|streamwish)\\.[^\\/,^\\.]{2,}\\/.+";
      const String sbvideo =
          "https?:\\/\\/(www\\.)?(sbvideo)\\.[^\\/,^\\.]{2,}\\/.+";
      const String streamsb =
          "https?:\\/\\/(www\\.)?(sbfast|dokanhost)\\.[^\\/,^\\.]{2,}\\/.+";
      const String dailymotion =
          "https?:\\/\\/(www\\.)?(dailymotion)\\.[^\\/,^\\.]{2,}\\/.+";
      const String sbembed4 =
          "https?:\\/\\/(www\\.)?(sbembed4)\\.[^\\/,^\\.]{2,}\\/.+";
      const String ninjastream =
          "https?:\\/\\/(www\\.)?(ninjastream)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vidlox =
          "https?:\\/\\/(www\\.)?(vidlox)\\.[^\\/,^\\.]{2,}\\/.+";
      const String mixdrop =
          "https?:\\/\\/(www\\.)?(mixdrop)\\.[^\\/,^\\.]{2,}\\/.+";
      const String hxfile =
          "https?:\\/\\/(www\\.)?(hxfile)\\.[^\\/,^\\.]{2,}\\/.+";
      const String govid =
          "https?:\\/\\/(www\\.)?(govid|goved)\\.[^\\/,^\\.]{2,}\\/.+";
      const String gvid = "https?:\\/\\/(www\\.)?(gvid)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vidoza =
          "https?:\\/\\/(www\\.)?(vidoza)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vudeo =
          "https?:\\/\\/(www\\.)?(vudeo|arteenz|xvideosharing)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vidmoly =
          "https?:\\/\\/(www\\.)?(vidmoly)\\.[^\\/,^\\.]{2,}\\/.+";
      const String youtube =
          "https?:\\/\\/(www\\.)?(youtube)\\.[^\\/,^\\.]{2,}\\/.+";
      const String xvideosharing =
          "https?:\\/\\/(www\\.)?(xvideosharing|1drv)\\.[^\\/,^\\.]{2,}\\/.+";
      const String vidsrc =
          "https?:\\/\\/(www\\.)?(vidsrc|dzen)\\.[^\\/,^\\.]{2,}\\/.+";

      // Add additional patterns as needed

      if (_check(vidtube, url)) {
        VidtubeLinkHelper.fetch(url: url, onComplete: onComplete);
      } else

      if (_check(fasoula, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(xvideosharing, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(vidsrc, url)) {
        VidSrcExtractorActivity.fetch(url: url, onComplete: onComplete);
      } else

      if (_check(vidmoly, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(vudeo, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(vidoza, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(gvid, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(govid, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(hxfile, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(mixdrop, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(vidlox, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(ninjastream, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(sbembed4, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(dailymotion, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(streamsb, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(sbvideo, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(zplayer, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(pandafiles, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(vidhd, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(myviid, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(mp4upload, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(filerio, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(filemoon, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(sendvid, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(mediafire, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(okru, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(solidfiles, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(uptostream, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(fansubs, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(saruch, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(femax20, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(fembed, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(bitTube, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(fourShared, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(vimeo, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(dutrag, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(zapurl, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(iplhd, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(kanavid, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(gavid, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(mrdhan, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(saruch, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(diasfem, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(sbplay, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(playto1, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(easyplex, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(multiquality, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(gdstream, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(pocketnow, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(femax20, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(streamtape, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(arabseed, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(uqload, url)) {
        // _fetchVuploadEasyPlex(url);
        KobatubeEasyPlex.fetch(url: url,onComplete: onComplete);
      } else

      if (_check(kobatube, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(asianembed, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(moshahda, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(basevid2, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(basevid, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(vedsharr, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(dramacool, url)) {
        _fetchVuploadEasyPlex(url);
      } else

      if (_check(bostream, url)) {
        _fetchVuploadEasyPlex(url);
      } else if (_check(dooosub, url)) {
        _fetchVuploadEasyPlex(url);
      } else if (_check(vupload, url)) {
        _fetchVuploadEasyPlex(url);
      } else if (_check(upstream, url)) {
        _fetchVuploadEasyPlex(url);
      } else if (_check(youtube, url)) {
        _fetchYoutubeEasyPlex(url);
      } else {
        onComplete("Error: No match found for the provided URL.");
      }
    }
  }

  void _onLaunchRemoteRegex(String url) {
    // Add logic to handle remote regex check if needed
  }

  void _fetchVuploadEasyPlex(String url) {
    // Define the fetch operation for VuploadEasyPlex
    onComplete("Fetched VuploadEasyPlex for URL: $url");
  }

  void _fetchYoutubeEasyPlex(String url) {
    // Define the fetch operation for YoutubeEasyPlex
    onComplete("Fetched YoutubeEasyPlex for URL: $url");
  }
}



