import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TareasRecord extends FirestoreRecord {
  TareasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tNombre" field.
  String? _tNombre;
  String get tNombre => _tNombre ?? '';
  bool hasTNombre() => _tNombre != null;

  // "tDescripcion" field.
  String? _tDescripcion;
  String get tDescripcion => _tDescripcion ?? '';
  bool hasTDescripcion() => _tDescripcion != null;

  // "tFechaLimite" field.
  DateTime? _tFechaLimite;
  DateTime? get tFechaLimite => _tFechaLimite;
  bool hasTFechaLimite() => _tFechaLimite != null;

  // "Estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "Grupos" field.
  List<String>? _grupos;
  List<String> get grupos => _grupos ?? const [];
  bool hasGrupos() => _grupos != null;

  void _initializeFields() {
    _tNombre = snapshotData['tNombre'] as String?;
    _tDescripcion = snapshotData['tDescripcion'] as String?;
    _tFechaLimite = snapshotData['tFechaLimite'] as DateTime?;
    _estado = snapshotData['Estado'] as bool?;
    _grupos = getDataList(snapshotData['Grupos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tareas');

  static Stream<TareasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TareasRecord.fromSnapshot(s));

  static Future<TareasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TareasRecord.fromSnapshot(s));

  static TareasRecord fromSnapshot(DocumentSnapshot snapshot) => TareasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TareasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TareasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TareasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TareasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTareasRecordData({
  String? tNombre,
  String? tDescripcion,
  DateTime? tFechaLimite,
  bool? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tNombre': tNombre,
      'tDescripcion': tDescripcion,
      'tFechaLimite': tFechaLimite,
      'Estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class TareasRecordDocumentEquality implements Equality<TareasRecord> {
  const TareasRecordDocumentEquality();

  @override
  bool equals(TareasRecord? e1, TareasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.tNombre == e2?.tNombre &&
        e1?.tDescripcion == e2?.tDescripcion &&
        e1?.tFechaLimite == e2?.tFechaLimite &&
        e1?.estado == e2?.estado &&
        listEquality.equals(e1?.grupos, e2?.grupos);
  }

  @override
  int hash(TareasRecord? e) => const ListEquality().hash(
      [e?.tNombre, e?.tDescripcion, e?.tFechaLimite, e?.estado, e?.grupos]);

  @override
  bool isValidKey(Object? o) => o is TareasRecord;
}
