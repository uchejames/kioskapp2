import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PilatesRecord extends FirestoreRecord {
  PilatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "FitnessLevel" field.
  String? _fitnessLevel;
  String get fitnessLevel => _fitnessLevel ?? '';
  bool hasFitnessLevel() => _fitnessLevel != null;

  // "Duration" field.
  double? _duration;
  double get duration => _duration ?? 0.0;
  bool hasDuration() => _duration != null;

  // "Thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  void _initializeFields() {
    _video = snapshotData['Video'] as String?;
    _fitnessLevel = snapshotData['FitnessLevel'] as String?;
    _duration = castToType<double>(snapshotData['Duration']);
    _thumbnail = snapshotData['Thumbnail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pilates');

  static Stream<PilatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PilatesRecord.fromSnapshot(s));

  static Future<PilatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PilatesRecord.fromSnapshot(s));

  static PilatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PilatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PilatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PilatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PilatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PilatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPilatesRecordData({
  String? video,
  String? fitnessLevel,
  double? duration,
  String? thumbnail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Video': video,
      'FitnessLevel': fitnessLevel,
      'Duration': duration,
      'Thumbnail': thumbnail,
    }.withoutNulls,
  );

  return firestoreData;
}

class PilatesRecordDocumentEquality implements Equality<PilatesRecord> {
  const PilatesRecordDocumentEquality();

  @override
  bool equals(PilatesRecord? e1, PilatesRecord? e2) {
    return e1?.video == e2?.video &&
        e1?.fitnessLevel == e2?.fitnessLevel &&
        e1?.duration == e2?.duration &&
        e1?.thumbnail == e2?.thumbnail;
  }

  @override
  int hash(PilatesRecord? e) => const ListEquality()
      .hash([e?.video, e?.fitnessLevel, e?.duration, e?.thumbnail]);

  @override
  bool isValidKey(Object? o) => o is PilatesRecord;
}
