import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AnunciosRecord extends FirestoreRecord {
  AnunciosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "like_usuario" field.
  List<DocumentReference>? _likeUsuario;
  List<DocumentReference> get likeUsuario => _likeUsuario ?? const [];
  bool hasLikeUsuario() => _likeUsuario != null;

  // "fecha_publicacion" field.
  DateTime? _fechaPublicacion;
  DateTime? get fechaPublicacion => _fechaPublicacion;
  bool hasFechaPublicacion() => _fechaPublicacion != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _likeUsuario = getDataList(snapshotData['like_usuario']);
    _fechaPublicacion = snapshotData['fecha_publicacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios');

  static Stream<AnunciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnunciosRecord.fromSnapshot(s));

  static Future<AnunciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnunciosRecord.fromSnapshot(s));

  static AnunciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnunciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnunciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnunciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnunciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnunciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnunciosRecordData({
  String? descripcion,
  String? titulo,
  DateTime? fechaPublicacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'titulo': titulo,
      'fecha_publicacion': fechaPublicacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnunciosRecordDocumentEquality implements Equality<AnunciosRecord> {
  const AnunciosRecordDocumentEquality();

  @override
  bool equals(AnunciosRecord? e1, AnunciosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.descripcion == e2?.descripcion &&
        e1?.titulo == e2?.titulo &&
        listEquality.equals(e1?.likeUsuario, e2?.likeUsuario) &&
        e1?.fechaPublicacion == e2?.fechaPublicacion;
  }

  @override
  int hash(AnunciosRecord? e) => const ListEquality()
      .hash([e?.descripcion, e?.titulo, e?.likeUsuario, e?.fechaPublicacion]);

  @override
  bool isValidKey(Object? o) => o is AnunciosRecord;
}
