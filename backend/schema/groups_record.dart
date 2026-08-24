import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "coach_id" field.
  String? _coachId;
  String get coachId => _coachId ?? '';
  bool hasCoachId() => _coachId != null;

  // "member_ids" field.
  List<String>? _memberIds;
  List<String> get memberIds => _memberIds ?? const [];
  bool hasMemberIds() => _memberIds != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "group_id" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  bool hasGroupId() => _groupId != null;

  // "member_count" field.
  int? _memberCount;
  int get memberCount => _memberCount ?? 0;
  bool hasMemberCount() => _memberCount != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _coachId = snapshotData['coach_id'] as String?;
    _memberIds = getDataList(snapshotData['member_ids']);
    _description = snapshotData['description'] as String?;
    _groupId = snapshotData['group_id'] as String?;
    _memberCount = castToType<int>(snapshotData['member_count']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  String? name,
  String? coachId,
  String? description,
  String? groupId,
  int? memberCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'coach_id': coachId,
      'description': description,
      'group_id': groupId,
      'member_count': memberCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupsRecordDocumentEquality implements Equality<GroupsRecord> {
  const GroupsRecordDocumentEquality();

  @override
  bool equals(GroupsRecord? e1, GroupsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.coachId == e2?.coachId &&
        listEquality.equals(e1?.memberIds, e2?.memberIds) &&
        e1?.description == e2?.description &&
        e1?.groupId == e2?.groupId &&
        e1?.memberCount == e2?.memberCount;
  }

  @override
  int hash(GroupsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.coachId,
        e?.memberIds,
        e?.description,
        e?.groupId,
        e?.memberCount
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupsRecord;
}
