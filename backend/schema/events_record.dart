import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Sports club events shown in the member calendar and RSVP flow.
class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "group_ids" field.
  List<String>? _groupIds;
  List<String> get groupIds => _groupIds ?? const [];
  bool hasGroupIds() => _groupIds != null;

  // "group_names" field.
  List<String>? _groupNames;
  List<String> get groupNames => _groupNames ?? const [];
  bool hasGroupNames() => _groupNames != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as String?;
    _createdBy = snapshotData['created_by'] as String?;
    _type = snapshotData['type'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _groupIds = getDataList(snapshotData['group_ids']);
    _groupNames = getDataList(snapshotData['group_names']);
    _status = snapshotData['status'] as String?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? title,
  String? description,
  String? location,
  String? createdBy,
  String? type,
  DateTime? startTime,
  String? status,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'location': location,
      'created_by': createdBy,
      'type': type,
      'start_time': startTime,
      'status': status,
      'updated_at': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.createdBy == e2?.createdBy &&
        e1?.type == e2?.type &&
        e1?.startTime == e2?.startTime &&
        listEquality.equals(e1?.groupIds, e2?.groupIds) &&
        listEquality.equals(e1?.groupNames, e2?.groupNames) &&
        e1?.status == e2?.status &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.location,
        e?.createdBy,
        e?.type,
        e?.startTime,
        e?.groupIds,
        e?.groupNames,
        e?.status,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
