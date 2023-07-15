import 'dart:ffi';

import 'package:get_storage/get_storage.dart';

class StorageUtils {
  static final box = GetStorage();

  static Future<void> setBgMusic({required bool play}) async {
    await box.write(
      'music',
      play,
    );
  }

  static Future<dynamic> getBgMusic() async {
    return box.read(
      'music',
    );
  }

  static Future<void> setUserModel(
      {required Map<String, dynamic> userModel}) async {
    await box.write(
      'user',
      userModel,
    );
  }

  static Future<dynamic> getUserModel() async {
    return box.read(
      'user',
    );
  }

  static Future<void> setIceCreamLevel(
      {required int iceCreamLevel}) async {
    await box.write(
      'iceCreamLevel',
      iceCreamLevel,
    );
  }

  static Future<dynamic> getIceCreamLevel() async {
    return box.read(
      'iceCreamLevel',
    );
  }

  static Future<void> setMathCurrentIndex(
      {required int currentIndex}) async {
    await box.write(
      'currentIndex',
      currentIndex,
    );
  }

  static Future<dynamic> getMathCurrentIndex() async {
    return box.read(
      'currentIndex',
    );
  }

  static Future<void> setPodcasts({required String podcasts}) async {
    await box.write(
      'podcasts',
      podcasts,
    );
  }

  static Future<dynamic> getPodcasts() async {
    return box.read(
      'podcasts',
    );
  }

  static Future<void> setPuzzleLevel({
    required int level,
  }) async {
    await box.write(
      'puzzleLevel',
      level,
    );
  }

  static Future<void> removePuzzleLevel() async {
    await box.write(
      'puzzleLevel',
      null,
    );
  }

  static Future<dynamic> getPuzzleLevel() async {
    return box.read(
      'puzzleLevel',
    );
  }

  static Future<void> setOpenTime({required String openTime}) async {
    await box.write(
      'openTime',
      openTime,
    );
  }

  static Future<dynamic> getOpenTime() async {
    return box.read(
      'openTime',
    );
  }

  static Future<void> setPlayedPuzzleIds({required List<int> playedIds}) async {
    await box.write(
      'playedIds',
      playedIds,
    );
  }

  static Future<dynamic> getPlayedPuzzleIds() async {
    return box.read(
      'playedIds',
    );
  }

  static Future<void> setWatchedVideo({required int watchedId}) async {

    var idsList = await getWatchedVideo();

    if(idsList is List){
      if(!idsList.contains(watchedId)){
        idsList.add(watchedId);
      }
    }

    await box.write(
      'watchedVideo',
      idsList,
    );
  }

  static Future<dynamic> getWatchedVideo() async {
    return box.read(
      'watchedVideo',
    );
  }


  static Future<void> removePlayedPuzzle() async {
    await box.write(
      'playedIds',
      null
    );
  }


  static Future<void> setCloseTime({required String closeTime}) async {
    await box.write(
      'closeTime',
      closeTime,
    );
  }

  static Future<dynamic> getCloseTime() async {
    return box.read(
      'closeTime',
    );
  }

  static Future<void> setRefreshToken({required String refreshToken}) async {
    await box.write(
      'refresh',
      refreshToken,
    );
  }

  static Future<dynamic> getRefreshToken() async {
    return box.read(
      'refresh',
    );
  }

  static Future<void> setAccessToken({required String accessToken}) async {
    await box.write(
      'access',
      accessToken,
    );
  }

  static Future<dynamic> getAccessToken() async {
    return box.read(
      'access',
    );
  }

  static Future<void> removeOpenTime() async {
    box.remove('openTime');
  }

  static Future<void> removeCloseTime() async {
    box.remove('closeTime');
  }
}
