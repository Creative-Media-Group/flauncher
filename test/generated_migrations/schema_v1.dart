// GENERATED CODE, DO NOT EDIT BY HAND.
//@dart=2.12
import 'package:drift/drift.dart';

class Apps extends Table with TableInfo<Apps, AppsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Apps(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<String> packageName = GeneratedColumn<String>(
      'package_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> className = GeneratedColumn<String>(
      'class_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
      'version', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<Uint8List> banner = GeneratedColumn<Uint8List>(
      'banner', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  late final GeneratedColumn<Uint8List> icon = GeneratedColumn<Uint8List>(
      'icon', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [packageName, name, className, version, banner, icon];
  @override
  String get aliasedName => _alias ?? 'apps';
  @override
  String get actualTableName => 'apps';
  @override
  Set<GeneratedColumn> get $primaryKey => {packageName};
  @override
  AppsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppsData(
      packageName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}package_name'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      className: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}class_name'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}version'])!,
      banner: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}banner']),
      icon: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}icon']),
    );
  }

  @override
  Apps createAlias(String alias) {
    return Apps(attachedDatabase, alias);
  }
}

class AppsData extends DataClass implements Insertable<AppsData> {
  final String packageName;
  final String name;
  final String className;
  final String version;
  final Uint8List? banner;
  final Uint8List? icon;
  const AppsData(
      {required this.packageName,
      required this.name,
      required this.className,
      required this.version,
      this.banner,
      this.icon});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['package_name'] = Variable<String>(packageName);
    map['name'] = Variable<String>(name);
    map['class_name'] = Variable<String>(className);
    map['version'] = Variable<String>(version);
    if (!nullToAbsent || banner != null) {
      map['banner'] = Variable<Uint8List>(banner);
    }
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<Uint8List>(icon);
    }
    return map;
  }

  AppsCompanion toCompanion(bool nullToAbsent) {
    return AppsCompanion(
      packageName: Value(packageName),
      name: Value(name),
      className: Value(className),
      version: Value(version),
      banner:
          banner == null && nullToAbsent ? const Value.absent() : Value(banner),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
    );
  }

  factory AppsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppsData(
      packageName: serializer.fromJson<String>(json['packageName']),
      name: serializer.fromJson<String>(json['name']),
      className: serializer.fromJson<String>(json['className']),
      version: serializer.fromJson<String>(json['version']),
      banner: serializer.fromJson<Uint8List?>(json['banner']),
      icon: serializer.fromJson<Uint8List?>(json['icon']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'packageName': serializer.toJson<String>(packageName),
      'name': serializer.toJson<String>(name),
      'className': serializer.toJson<String>(className),
      'version': serializer.toJson<String>(version),
      'banner': serializer.toJson<Uint8List?>(banner),
      'icon': serializer.toJson<Uint8List?>(icon),
    };
  }

  AppsData copyWith(
          {String? packageName,
          String? name,
          String? className,
          String? version,
          Value<Uint8List?> banner = const Value.absent(),
          Value<Uint8List?> icon = const Value.absent()}) =>
      AppsData(
        packageName: packageName ?? this.packageName,
        name: name ?? this.name,
        className: className ?? this.className,
        version: version ?? this.version,
        banner: banner.present ? banner.value : this.banner,
        icon: icon.present ? icon.value : this.icon,
      );
  @override
  String toString() {
    return (StringBuffer('AppsData(')
          ..write('packageName: $packageName, ')
          ..write('name: $name, ')
          ..write('className: $className, ')
          ..write('version: $version, ')
          ..write('banner: $banner, ')
          ..write('icon: $icon')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(packageName, name, className, version,
      $driftBlobEquality.hash(banner), $driftBlobEquality.hash(icon));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppsData &&
          other.packageName == packageName &&
          other.name == name &&
          other.className == className &&
          other.version == version &&
          $driftBlobEquality.equals(other.banner, banner) &&
          $driftBlobEquality.equals(other.icon, icon));
}

class AppsCompanion extends UpdateCompanion<AppsData> {
  final Value<String> packageName;
  final Value<String> name;
  final Value<String> className;
  final Value<String> version;
  final Value<Uint8List?> banner;
  final Value<Uint8List?> icon;
  const AppsCompanion({
    this.packageName = const Value.absent(),
    this.name = const Value.absent(),
    this.className = const Value.absent(),
    this.version = const Value.absent(),
    this.banner = const Value.absent(),
    this.icon = const Value.absent(),
  });
  AppsCompanion.insert({
    required String packageName,
    required String name,
    required String className,
    required String version,
    this.banner = const Value.absent(),
    this.icon = const Value.absent(),
  })  : packageName = Value(packageName),
        name = Value(name),
        className = Value(className),
        version = Value(version);
  static Insertable<AppsData> custom({
    Expression<String>? packageName,
    Expression<String>? name,
    Expression<String>? className,
    Expression<String>? version,
    Expression<Uint8List>? banner,
    Expression<Uint8List>? icon,
  }) {
    return RawValuesInsertable({
      if (packageName != null) 'package_name': packageName,
      if (name != null) 'name': name,
      if (className != null) 'class_name': className,
      if (version != null) 'version': version,
      if (banner != null) 'banner': banner,
      if (icon != null) 'icon': icon,
    });
  }

  AppsCompanion copyWith(
      {Value<String>? packageName,
      Value<String>? name,
      Value<String>? className,
      Value<String>? version,
      Value<Uint8List?>? banner,
      Value<Uint8List?>? icon}) {
    return AppsCompanion(
      packageName: packageName ?? this.packageName,
      name: name ?? this.name,
      className: className ?? this.className,
      version: version ?? this.version,
      banner: banner ?? this.banner,
      icon: icon ?? this.icon,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (packageName.present) {
      map['package_name'] = Variable<String>(packageName.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (className.present) {
      map['class_name'] = Variable<String>(className.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    if (banner.present) {
      map['banner'] = Variable<Uint8List>(banner.value);
    }
    if (icon.present) {
      map['icon'] = Variable<Uint8List>(icon.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppsCompanion(')
          ..write('packageName: $packageName, ')
          ..write('name: $name, ')
          ..write('className: $className, ')
          ..write('version: $version, ')
          ..write('banner: $banner, ')
          ..write('icon: $icon')
          ..write(')'))
        .toString();
  }
}

class Categories extends Table with TableInfo<Categories, CategoriesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Categories(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
      'order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, order];
  @override
  String get aliasedName => _alias ?? 'categories';
  @override
  String get actualTableName => 'categories';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoriesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoriesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order'])!,
    );
  }

  @override
  Categories createAlias(String alias) {
    return Categories(attachedDatabase, alias);
  }
}

class CategoriesData extends DataClass implements Insertable<CategoriesData> {
  final int id;
  final String name;
  final int order;
  const CategoriesData(
      {required this.id, required this.name, required this.order});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['order'] = Variable<int>(order);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      name: Value(name),
      order: Value(order),
    );
  }

  factory CategoriesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoriesData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      order: serializer.fromJson<int>(json['order']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'order': serializer.toJson<int>(order),
    };
  }

  CategoriesData copyWith({int? id, String? name, int? order}) =>
      CategoriesData(
        id: id ?? this.id,
        name: name ?? this.name,
        order: order ?? this.order,
      );
  @override
  String toString() {
    return (StringBuffer('CategoriesData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, order);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoriesData &&
          other.id == id &&
          other.name == name &&
          other.order == order);
}

class CategoriesCompanion extends UpdateCompanion<CategoriesData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> order;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.order = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int order,
  })  : name = Value(name),
        order = Value(order);
  static Insertable<CategoriesData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? order,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (order != null) 'order': order,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<int>? order}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      order: order ?? this.order,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }
}

class AppsCategories extends Table
    with TableInfo<AppsCategories, AppsCategoriesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  AppsCategories(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES categories(id) ON DELETE CASCADE');
  late final GeneratedColumn<String> appPackageName = GeneratedColumn<String>(
      'app_package_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES apps(package_name) ON DELETE CASCADE');
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
      'order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [categoryId, appPackageName, order];
  @override
  String get aliasedName => _alias ?? 'apps_categories';
  @override
  String get actualTableName => 'apps_categories';
  @override
  Set<GeneratedColumn> get $primaryKey => {categoryId, appPackageName};
  @override
  AppsCategoriesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppsCategoriesData(
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      appPackageName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}app_package_name'])!,
      order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order'])!,
    );
  }

  @override
  AppsCategories createAlias(String alias) {
    return AppsCategories(attachedDatabase, alias);
  }
}

class AppsCategoriesData extends DataClass
    implements Insertable<AppsCategoriesData> {
  final int categoryId;
  final String appPackageName;
  final int order;
  const AppsCategoriesData(
      {required this.categoryId,
      required this.appPackageName,
      required this.order});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['category_id'] = Variable<int>(categoryId);
    map['app_package_name'] = Variable<String>(appPackageName);
    map['order'] = Variable<int>(order);
    return map;
  }

  AppsCategoriesCompanion toCompanion(bool nullToAbsent) {
    return AppsCategoriesCompanion(
      categoryId: Value(categoryId),
      appPackageName: Value(appPackageName),
      order: Value(order),
    );
  }

  factory AppsCategoriesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppsCategoriesData(
      categoryId: serializer.fromJson<int>(json['categoryId']),
      appPackageName: serializer.fromJson<String>(json['appPackageName']),
      order: serializer.fromJson<int>(json['order']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'categoryId': serializer.toJson<int>(categoryId),
      'appPackageName': serializer.toJson<String>(appPackageName),
      'order': serializer.toJson<int>(order),
    };
  }

  AppsCategoriesData copyWith(
          {int? categoryId, String? appPackageName, int? order}) =>
      AppsCategoriesData(
        categoryId: categoryId ?? this.categoryId,
        appPackageName: appPackageName ?? this.appPackageName,
        order: order ?? this.order,
      );
  @override
  String toString() {
    return (StringBuffer('AppsCategoriesData(')
          ..write('categoryId: $categoryId, ')
          ..write('appPackageName: $appPackageName, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(categoryId, appPackageName, order);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppsCategoriesData &&
          other.categoryId == categoryId &&
          other.appPackageName == appPackageName &&
          other.order == order);
}

class AppsCategoriesCompanion extends UpdateCompanion<AppsCategoriesData> {
  final Value<int> categoryId;
  final Value<String> appPackageName;
  final Value<int> order;
  const AppsCategoriesCompanion({
    this.categoryId = const Value.absent(),
    this.appPackageName = const Value.absent(),
    this.order = const Value.absent(),
  });
  AppsCategoriesCompanion.insert({
    required int categoryId,
    required String appPackageName,
    required int order,
  })  : categoryId = Value(categoryId),
        appPackageName = Value(appPackageName),
        order = Value(order);
  static Insertable<AppsCategoriesData> custom({
    Expression<int>? categoryId,
    Expression<String>? appPackageName,
    Expression<int>? order,
  }) {
    return RawValuesInsertable({
      if (categoryId != null) 'category_id': categoryId,
      if (appPackageName != null) 'app_package_name': appPackageName,
      if (order != null) 'order': order,
    });
  }

  AppsCategoriesCompanion copyWith(
      {Value<int>? categoryId,
      Value<String>? appPackageName,
      Value<int>? order}) {
    return AppsCategoriesCompanion(
      categoryId: categoryId ?? this.categoryId,
      appPackageName: appPackageName ?? this.appPackageName,
      order: order ?? this.order,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (appPackageName.present) {
      map['app_package_name'] = Variable<String>(appPackageName.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppsCategoriesCompanion(')
          ..write('categoryId: $categoryId, ')
          ..write('appPackageName: $appPackageName, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }
}

class DatabaseAtV1 extends GeneratedDatabase {
  DatabaseAtV1(QueryExecutor e) : super(e);
  late final Apps apps = Apps(this);
  late final Categories categories = Categories(this);
  late final AppsCategories appsCategories = AppsCategories(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [apps, categories, appsCategories];
  @override
  int get schemaVersion => 1;
}
