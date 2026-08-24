import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Audited administrator changes applied by the affected user.
class AccessChangesRecord extends FirestoreRecord {
  AccessChangesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "target_user_ref" field.
  DocumentReference? _targetUserRef;
  DocumentReference? get targetUserRef => _targetUserRef;
  bool hasTargetUserRef() => _targetUserRef != null;

  // "changed_by" field.
  String? _changedBy;
  String get changedBy => _changedBy ?? '';
  bool hasChangedBy() => _changedBy != null;

  // "change_type" field.
  String? _changeType;
  String get changeType => _changeType ?? '';
  bool hasChangeType() => _changeType != null;

  // "group_ids" field.
  List<String>? _groupIds;
  List<String> get groupIds => _groupIds ?? const [];
  bool hasGroupIds() => _groupIds != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _targetUserRef = snapshotData['target_user_ref'] as DocumentReference?;
    _changedBy = snapshotData['changed_by'] as String?;
    _changeType = snapshotData['change_type'] as String?;
    _groupIds = getDataList(snapshotData['group_ids']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('access_changes');

  static Stream<AccessChangesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccessChangesRecord.fromSnapshot(s));

  static Future<AccessChangesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccessChangesRecord.fromSnapshot(s));

  static AccessChangesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccessChangesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccessChangesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccessChangesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccessChangesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccessChangesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccessChangesRecordData({
  DocumentReference? targetUserRef,
  String? changedBy,
  String? changeType,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'target_user_ref': targetUserRef,
      'changed_by': changedBy,
      'change_type': changeType,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccessChangesRecordDocumentEquality
    implements Equality<AccessChangesRecord> {
  const AccessChangesRecordDocumentEquality();

  @override
  bool equals(AccessChangesRecord? e1, AccessChangesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.targetUserRef == e2?.targetUserRef &&
        e1?.changedBy == e2?.changedBy &&
        e1?.changeType == e2?.changeType &&
        listEquality.equals(e1?.groupIds, e2?.groupIds) &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(AccessChangesRecord? e) => const ListEquality().hash([
        e?.targetUserRef,
        e?.changedBy,
        e?.changeType,
        e?.groupIds,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is AccessChangesRecord;
}
