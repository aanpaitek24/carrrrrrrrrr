import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookRecord extends FirestoreRecord {
  BookRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "myservice" field.
  DocumentReference? _myservice;
  DocumentReference? get myservice => _myservice;
  bool hasMyservice() => _myservice != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _myservice = snapshotData['myservice'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('book');

  static Stream<BookRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookRecord.fromSnapshot(s));

  static Future<BookRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookRecord.fromSnapshot(s));

  static BookRecord fromSnapshot(DocumentSnapshot snapshot) => BookRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookRecordData({
  DocumentReference? myservice,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'myservice': myservice,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookRecordDocumentEquality implements Equality<BookRecord> {
  const BookRecordDocumentEquality();

  @override
  bool equals(BookRecord? e1, BookRecord? e2) {
    return e1?.myservice == e2?.myservice && e1?.user == e2?.user;
  }

  @override
  int hash(BookRecord? e) => const ListEquality().hash([e?.myservice, e?.user]);

  @override
  bool isValidKey(Object? o) => o is BookRecord;
}
