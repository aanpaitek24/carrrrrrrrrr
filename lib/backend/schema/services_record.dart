import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "carwash_name" field.
  String? _carwashName;
  String get carwashName => _carwashName ?? '';
  bool hasCarwashName() => _carwashName != null;

  // "old_price" field.
  int? _oldPrice;
  int get oldPrice => _oldPrice ?? 0;
  bool hasOldPrice() => _oldPrice != null;

  // "now_price" field.
  int? _nowPrice;
  int get nowPrice => _nowPrice ?? 0;
  bool hasNowPrice() => _nowPrice != null;

  // "offer" field.
  String? _offer;
  String get offer => _offer ?? '';
  bool hasOffer() => _offer != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  bool hasDiscount() => _discount != null;

  // "location_address" field.
  LatLng? _locationAddress;
  LatLng? get locationAddress => _locationAddress;
  bool hasLocationAddress() => _locationAddress != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "categgory" field.
  String? _categgory;
  String get categgory => _categgory ?? '';
  bool hasCateggory() => _categgory != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _location = snapshotData['location'] as String?;
    _carwashName = snapshotData['carwash_name'] as String?;
    _oldPrice = castToType<int>(snapshotData['old_price']);
    _nowPrice = castToType<int>(snapshotData['now_price']);
    _offer = snapshotData['offer'] as String?;
    _contact = snapshotData['contact'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
    _discount = castToType<int>(snapshotData['discount']);
    _locationAddress = snapshotData['location_address'] as LatLng?;
    _status = snapshotData['status'] as bool?;
    _categgory = snapshotData['categgory'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesRecordData({
  String? type,
  String? description,
  String? image,
  String? location,
  String? carwashName,
  int? oldPrice,
  int? nowPrice,
  String? offer,
  String? contact,
  int? rating,
  int? discount,
  LatLng? locationAddress,
  bool? status,
  String? categgory,
  DateTime? created,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'description': description,
      'image': image,
      'location': location,
      'carwash_name': carwashName,
      'old_price': oldPrice,
      'now_price': nowPrice,
      'offer': offer,
      'contact': contact,
      'rating': rating,
      'discount': discount,
      'location_address': locationAddress,
      'status': status,
      'categgory': categgory,
      'created': created,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.location == e2?.location &&
        e1?.carwashName == e2?.carwashName &&
        e1?.oldPrice == e2?.oldPrice &&
        e1?.nowPrice == e2?.nowPrice &&
        e1?.offer == e2?.offer &&
        e1?.contact == e2?.contact &&
        e1?.rating == e2?.rating &&
        e1?.discount == e2?.discount &&
        e1?.locationAddress == e2?.locationAddress &&
        e1?.status == e2?.status &&
        e1?.categgory == e2?.categgory &&
        e1?.created == e2?.created &&
        e1?.user == e2?.user;
  }

  @override
  int hash(ServicesRecord? e) => const ListEquality().hash([
        e?.type,
        e?.description,
        e?.image,
        e?.location,
        e?.carwashName,
        e?.oldPrice,
        e?.nowPrice,
        e?.offer,
        e?.contact,
        e?.rating,
        e?.discount,
        e?.locationAddress,
        e?.status,
        e?.categgory,
        e?.created,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
