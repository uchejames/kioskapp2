import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BarbellRecord extends FirestoreRecord {
  BarbellRecord._(
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
      FirebaseFirestore.instance.collection('Barbell');

  static Stream<BarbellRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BarbellRecord.fromSnapshot(s));

  static Future<BarbellRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BarbellRecord.fromSnapshot(s));

  static BarbellRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BarbellRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BarbellRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BarbellRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BarbellRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BarbellRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBarbellRecordData({
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

class BarbellRecordDocumentEquality implements Equality<BarbellRecord> {
  const BarbellRecordDocumentEquality();

  @override
  bool equals(BarbellRecord? e1, BarbellRecord? e2) {
    return e1?.video == e2?.video &&
        e1?.fitnessLevel == e2?.fitnessLevel &&
        e1?.duration == e2?.duration &&
        e1?.thumbnail == e2?.thumbnail;
  }

  @override
  int hash(BarbellRecord? e) => const ListEquality()
      .hash([e?.video, e?.fitnessLevel, e?.duration, e?.thumbnail]);

  @override
  bool isValidKey(Object? o) => o is BarbellRecord;
}
