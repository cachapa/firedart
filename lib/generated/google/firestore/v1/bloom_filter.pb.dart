//
//  Generated code. Do not modify.
//  source: google/firestore/v1/bloom_filter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

///  A sequence of bits, encoded in a byte array.
///
///  Each byte in the `bitmap` byte array stores 8 bits of the sequence. The only
///  exception is the last byte, which may store 8 _or fewer_ bits. The `padding`
///  defines the number of bits of the last byte to be ignored as "padding". The
///  values of these "padding" bits are unspecified and must be ignored.
///
///  To retrieve the first bit, bit 0, calculate: `(bitmap[0] & 0x01) != 0`.
///  To retrieve the second bit, bit 1, calculate: `(bitmap[0] & 0x02) != 0`.
///  To retrieve the third bit, bit 2, calculate: `(bitmap[0] & 0x04) != 0`.
///  To retrieve the fourth bit, bit 3, calculate: `(bitmap[0] & 0x08) != 0`.
///  To retrieve bit n, calculate: `(bitmap[n / 8] & (0x01 << (n % 8))) != 0`.
///
///  The "size" of a `BitSequence` (the number of bits it contains) is calculated
///  by this formula: `(bitmap.length * 8) - padding`.
class BitSequence extends $pb.GeneratedMessage {
  factory BitSequence({
    $core.List<$core.int>? bitmap,
    $core.int? padding,
  }) {
    final $result = create();
    if (bitmap != null) {
      $result.bitmap = bitmap;
    }
    if (padding != null) {
      $result.padding = padding;
    }
    return $result;
  }
  BitSequence._() : super();
  factory BitSequence.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BitSequence.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BitSequence',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'bitmap', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'padding', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BitSequence clone() => BitSequence()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BitSequence copyWith(void Function(BitSequence) updates) =>
      super.copyWith((message) => updates(message as BitSequence))
          as BitSequence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BitSequence create() => BitSequence._();
  BitSequence createEmptyInstance() => create();
  static $pb.PbList<BitSequence> createRepeated() => $pb.PbList<BitSequence>();
  @$core.pragma('dart2js:noInline')
  static BitSequence getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BitSequence>(create);
  static BitSequence? _defaultInstance;

  /// The bytes that encode the bit sequence.
  /// May have a length of zero.
  @$pb.TagNumber(1)
  $core.List<$core.int> get bitmap => $_getN(0);
  @$pb.TagNumber(1)
  set bitmap($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBitmap() => $_has(0);
  @$pb.TagNumber(1)
  void clearBitmap() => clearField(1);

  /// The number of bits of the last byte in `bitmap` to ignore as "padding".
  /// If the length of `bitmap` is zero, then this value must be `0`.
  /// Otherwise, this value must be between 0 and 7, inclusive.
  @$pb.TagNumber(2)
  $core.int get padding => $_getIZ(1);
  @$pb.TagNumber(2)
  set padding($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPadding() => $_has(1);
  @$pb.TagNumber(2)
  void clearPadding() => clearField(2);
}

///  A bloom filter (https://en.wikipedia.org/wiki/Bloom_filter).
///
///  The bloom filter hashes the entries with MD5 and treats the resulting 128-bit
///  hash as 2 distinct 64-bit hash values, interpreted as unsigned integers
///  using 2's complement encoding.
///
///  These two hash values, named `h1` and `h2`, are then used to compute the
///  `hash_count` hash values using the formula, starting at `i=0`:
///
///      h(i) = h1 + (i * h2)
///
///  These resulting values are then taken modulo the number of bits in the bloom
///  filter to get the bits of the bloom filter to test for the given entry.
class BloomFilter extends $pb.GeneratedMessage {
  factory BloomFilter({
    BitSequence? bits,
    $core.int? hashCount,
  }) {
    final $result = create();
    if (bits != null) {
      $result.bits = bits;
    }
    if (hashCount != null) {
      $result.hashCount = hashCount;
    }
    return $result;
  }
  BloomFilter._() : super();
  factory BloomFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BloomFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BloomFilter',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<BitSequence>(1, _omitFieldNames ? '' : 'bits',
        subBuilder: BitSequence.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hashCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BloomFilter clone() => BloomFilter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BloomFilter copyWith(void Function(BloomFilter) updates) =>
      super.copyWith((message) => updates(message as BloomFilter))
          as BloomFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BloomFilter create() => BloomFilter._();
  BloomFilter createEmptyInstance() => create();
  static $pb.PbList<BloomFilter> createRepeated() => $pb.PbList<BloomFilter>();
  @$core.pragma('dart2js:noInline')
  static BloomFilter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BloomFilter>(create);
  static BloomFilter? _defaultInstance;

  /// The bloom filter data.
  @$pb.TagNumber(1)
  BitSequence get bits => $_getN(0);
  @$pb.TagNumber(1)
  set bits(BitSequence v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBits() => $_has(0);
  @$pb.TagNumber(1)
  void clearBits() => clearField(1);
  @$pb.TagNumber(1)
  BitSequence ensureBits() => $_ensure(0);

  /// The number of hashes used by the algorithm.
  @$pb.TagNumber(2)
  $core.int get hashCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set hashCount($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHashCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearHashCount() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
