import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  final _barbellManager = StreamRequestManager<List<BarbellRecord>>();
  Stream<List<BarbellRecord>> barbell({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<BarbellRecord>> Function() requestFn,
  }) =>
      _barbellManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBarbellCache() => _barbellManager.clear();
  void clearBarbellCacheKey(String? uniqueKey) =>
      _barbellManager.clearRequest(uniqueKey);

  final _bootyManager = StreamRequestManager<List<BootyRecord>>();
  Stream<List<BootyRecord>> booty({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<BootyRecord>> Function() requestFn,
  }) =>
      _bootyManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBootyCache() => _bootyManager.clear();
  void clearBootyCacheKey(String? uniqueKey) =>
      _bootyManager.clearRequest(uniqueKey);

  final _coreManager = StreamRequestManager<List<CoreRecord>>();
  Stream<List<CoreRecord>> core({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CoreRecord>> Function() requestFn,
  }) =>
      _coreManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCoreCache() => _coreManager.clear();
  void clearCoreCacheKey(String? uniqueKey) =>
      _coreManager.clearRequest(uniqueKey);

  final _fitgritManager = StreamRequestManager<List<FitGritRecord>>();
  Stream<List<FitGritRecord>> fitgrit({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<FitGritRecord>> Function() requestFn,
  }) =>
      _fitgritManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFitgritCache() => _fitgritManager.clear();
  void clearFitgritCacheKey(String? uniqueKey) =>
      _fitgritManager.clearRequest(uniqueKey);

  final _hitfitManager = StreamRequestManager<List<HiitFitRecord>>();
  Stream<List<HiitFitRecord>> hitfit({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<HiitFitRecord>> Function() requestFn,
  }) =>
      _hitfitManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearHitfitCache() => _hitfitManager.clear();
  void clearHitfitCacheKey(String? uniqueKey) =>
      _hitfitManager.clearRequest(uniqueKey);

  final _pilatesManager = StreamRequestManager<List<PilatesRecord>>();
  Stream<List<PilatesRecord>> pilates({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<PilatesRecord>> Function() requestFn,
  }) =>
      _pilatesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPilatesCache() => _pilatesManager.clear();
  void clearPilatesCacheKey(String? uniqueKey) =>
      _pilatesManager.clearRequest(uniqueKey);

  final _stretchManager = StreamRequestManager<List<StretchsRecord>>();
  Stream<List<StretchsRecord>> stretch({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<StretchsRecord>> Function() requestFn,
  }) =>
      _stretchManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearStretchCache() => _stretchManager.clear();
  void clearStretchCacheKey(String? uniqueKey) =>
      _stretchManager.clearRequest(uniqueKey);

  final _taichiManager = StreamRequestManager<List<TaichiRecord>>();
  Stream<List<TaichiRecord>> taichi({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TaichiRecord>> Function() requestFn,
  }) =>
      _taichiManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTaichiCache() => _taichiManager.clear();
  void clearTaichiCacheKey(String? uniqueKey) =>
      _taichiManager.clearRequest(uniqueKey);

  final _workoutsManager = StreamRequestManager<List<VideosRecord>>();
  Stream<List<VideosRecord>> workouts({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<VideosRecord>> Function() requestFn,
  }) =>
      _workoutsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearWorkoutsCache() => _workoutsManager.clear();
  void clearWorkoutsCacheKey(String? uniqueKey) =>
      _workoutsManager.clearRequest(uniqueKey);

  final _barbellVideoManager = StreamRequestManager<BarbellRecord>();
  Stream<BarbellRecord> barbellVideo({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<BarbellRecord> Function() requestFn,
  }) =>
      _barbellVideoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBarbellVideoCache() => _barbellVideoManager.clear();
  void clearBarbellVideoCacheKey(String? uniqueKey) =>
      _barbellVideoManager.clearRequest(uniqueKey);
}
