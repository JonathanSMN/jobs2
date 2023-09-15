import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VagaRecord extends FirestoreRecord {
  VagaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "competencias" field.
  String? _competencias;
  String get competencias => _competencias ?? '';
  bool hasCompetencias() => _competencias != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "informacao_adicional" field.
  String? _informacaoAdicional;
  String get informacaoAdicional => _informacaoAdicional ?? '';
  bool hasInformacaoAdicional() => _informacaoAdicional != null;

  // "localidade" field.
  String? _localidade;
  String get localidade => _localidade ?? '';
  bool hasLocalidade() => _localidade != null;

  // "modalidade" field.
  String? _modalidade;
  String get modalidade => _modalidade ?? '';
  bool hasModalidade() => _modalidade != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "img_url" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  bool hasImgUrl() => _imgUrl != null;

  // "img_desc" field.
  String? _imgDesc;
  String get imgDesc => _imgDesc ?? '';
  bool hasImgDesc() => _imgDesc != null;

  void _initializeFields() {
    _categoria = snapshotData['categoria'] as String?;
    _competencias = snapshotData['competencias'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _id = snapshotData['id'] as String?;
    _informacaoAdicional = snapshotData['informacao_adicional'] as String?;
    _localidade = snapshotData['localidade'] as String?;
    _modalidade = snapshotData['modalidade'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _imgUrl = snapshotData['img_url'] as String?;
    _imgDesc = snapshotData['img_desc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vaga');

  static Stream<VagaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VagaRecord.fromSnapshot(s));

  static Future<VagaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VagaRecord.fromSnapshot(s));

  static VagaRecord fromSnapshot(DocumentSnapshot snapshot) => VagaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VagaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VagaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VagaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VagaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVagaRecordData({
  String? categoria,
  String? competencias,
  String? descricao,
  String? id,
  String? informacaoAdicional,
  String? localidade,
  String? modalidade,
  String? titulo,
  String? imgUrl,
  String? imgDesc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoria': categoria,
      'competencias': competencias,
      'descricao': descricao,
      'id': id,
      'informacao_adicional': informacaoAdicional,
      'localidade': localidade,
      'modalidade': modalidade,
      'titulo': titulo,
      'img_url': imgUrl,
      'img_desc': imgDesc,
    }.withoutNulls,
  );

  return firestoreData;
}

class VagaRecordDocumentEquality implements Equality<VagaRecord> {
  const VagaRecordDocumentEquality();

  @override
  bool equals(VagaRecord? e1, VagaRecord? e2) {
    return e1?.categoria == e2?.categoria &&
        e1?.competencias == e2?.competencias &&
        e1?.descricao == e2?.descricao &&
        e1?.id == e2?.id &&
        e1?.informacaoAdicional == e2?.informacaoAdicional &&
        e1?.localidade == e2?.localidade &&
        e1?.modalidade == e2?.modalidade &&
        e1?.titulo == e2?.titulo &&
        e1?.imgUrl == e2?.imgUrl &&
        e1?.imgDesc == e2?.imgDesc;
  }

  @override
  int hash(VagaRecord? e) => const ListEquality().hash([
        e?.categoria,
        e?.competencias,
        e?.descricao,
        e?.id,
        e?.informacaoAdicional,
        e?.localidade,
        e?.modalidade,
        e?.titulo,
        e?.imgUrl,
        e?.imgDesc
      ]);

  @override
  bool isValidKey(Object? o) => o is VagaRecord;
}
