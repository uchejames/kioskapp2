import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosRecord extends FirestoreRecord {
  VideosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Names" field.
  String? _names;
  String get names => _names ?? '';
  bool hasNames() => _names != null;

  // "fitnessLevel" field.
  String? _fitnessLevel;
  String get fitnessLevel => _fitnessLevel ?? '';
  bool hasFitnessLevel() => _fitnessLevel != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "Thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  void _initializeFields() {
    _names = snapshotData['Names'] as String?;
    _fitnessLevel = snapshotData['fitnessLevel'] as String?;
    _video = snapshotData['video'] as String?;
    _duration = snapshotData['Duration'] as String?;
    _thumbnail = snapshotData['Thumbnail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosRecord.fromSnapshot(s));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosRecord.fromSnapshot(s));

  static VideosRecord fromSnapshot(DocumentSnapshot snapshot) => VideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosRecordData({
  String? names,
  String? fitnessLevel,
  String? video,
  String? duration,
  String? thumbnail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Names': names,
      'fitnessLevel': fitnessLevel,
      'video': video,
      'Duration': duration,
      'Thumbnail': thumbnail,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosRecordDocumentEquality implements Equality<VideosRecord> {
  const VideosRecordDocumentEquality();

  @override
  bool equals(VideosRecord? e1, VideosRecord? e2) {
    return e1?.names == e2?.names &&
        e1?.fitnessLevel == e2?.fitnessLevel &&
        e1?.video == e2?.video &&
        e1?.duration == e2?.duration &&
        e1?.thumbnail == e2?.thumbnail;
  }

  @override
  int hash(VideosRecord? e) => const ListEquality()
      .hash([e?.names, e?.fitnessLevel, e?.video, e?.duration, e?.thumbnail]);

  @override
  bool isValidKey(Object? o) => o is VideosRecord;
}
