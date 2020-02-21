class Item {
  String Id;
  String RootId;
  String ParentLink;
  String Name;
  String NormalizedName;
  String ParentName;
  int NameLevel;
  String Alias;
  String AliasText;
  String NormalizedAlias;
  String Source;
  String Markdown;
  String FullText;
  String Discriminator;
  List<Item> Children;

  Item({this.Id, this.Name, this.Alias, this.Markdown, this.Discriminator});

  Item.fromMap(Map<String, dynamic> map) {
    this.Id = map["Id"];
    this.Name = map["Name"];
    this.Alias = map["AltName"];
    this.AliasText = map["AltNameText"];
    this.Markdown = map["Markdown"];
    this.Discriminator = map["Discriminator"];
  }

  /*factory Item.fromMap(Map<String, dynamic> json) => new Item(
    Id: json["Id"],
    Name: json["Name"],
    Alias: json["AltName"],
    Markdown: json["Markdown"],
    Discriminator: json["Discriminator"],
  );*/

  Map<String, dynamic> toMap() => {
    "Id": Id,
    "RootId": Id,
    "Name": Name,
    "AltName": Alias,
    "AltNameText": AliasText,
    "Markdown": Markdown,
    "Discriminator": Discriminator,
  };
}

class MonsterItem extends Item {
  String Family;
  String Type;
  String Size;
  String Alignment;
  String Terrain;
  String Legendary;
  String ArmorClass;
  String HitPoints;
  String Speed;
  String Strength;
  String Dexterity;
  String Constitution;
  String Intelligence;
  String Wisdom;
  String Charisma;
  String SavingThrows;
  String Skills;
  String DamageVulnerabilities;
  String DamageImmunities;
  String ConditionImmunities;
  String DamageResistances;
  String Senses;
  String Languages;
  String Challenge;
  int XP;

  MonsterItem.fromMap(Map<String, dynamic> map)
    : super.fromMap(map) {
    this.Family = map["Family"];
    this.Type = map["Type"];
    this.Size = map["Size"];
    this.Alignment = map["Alignment"];
    this.Terrain = map["Terrain"];
    this.Legendary = map["Legendary"];
    this.ArmorClass = map["ArmorClass"];
    this.HitPoints = map["HitPoints"];
    this.Speed = map["Speed"];
    this.Strength = map["Strength"];
    this.Dexterity = map["Dexterity"];
    this.Constitution = map["Constitution"];
    this.Intelligence = map["Intelligence"];
    this.Wisdom = map["Wisdom"];
    this.Charisma = map["Charisma"];
    this.SavingThrows = map["SavingThrows"];
    this.Skills = map["Skills"];
    this.DamageVulnerabilities = map["DamageVulnerabilities"];
    this.DamageImmunities = map["DamageImmunities"];
    this.ConditionImmunities = map["ConditionImmunities"];
    this.DamageResistances = map["DamageResistances"];
    this.Senses = map["Senses"];
    this.Languages = map["Languages"];
    this.Challenge = map["Challenge"];
    this.XP = map["XP"];

  }
}

class MonsterItems extends Item {
  String Family;
  String Type;
  String Size;
  String Alignment;
  String Terrain;
  String Legendary;
  String ArmorClass;
  String HitPoints;
  String Speed;
  String Strength;
  String Dexterity;
  String Constitution;
  String Intelligence;
  String Wisdom;
  String Charisma;
  String SavingThrows;
  String Skills;
  String DamageVulnerabilities;
  String DamageImmunities;
  String ConditionImmunities;
  String DamageResistances;
  String Senses;
  String Languages;
  String Challenge;
  int XP;

  MonsterItems.fromMap(Map<String, dynamic> map)
      : super.fromMap(map) {
    this.Family = map["MonsterItems_Family"];
    this.Type = map["Type"];
    this.Size = map["Size"];
    this.Alignment = map["Alignment"];
    this.Terrain = map["Terrain"];
    this.Legendary = map["Legendary"];
    this.ArmorClass = map["ArmorClass"];
    this.HitPoints = map["HitPoints"];
    this.Speed = map["Speed"];
    this.Strength = map["Strength"];
    this.Dexterity = map["Dexterity"];
    this.Constitution = map["Constitution"];
    this.Intelligence = map["Intelligence"];
    this.Wisdom = map["Wisdom"];
    this.Charisma = map["Charisma"];
    this.SavingThrows = map["SavingThrows"];
    this.Skills = map["Skills"];
    this.DamageVulnerabilities = map["DamageVulnerabilities"];
    this.DamageImmunities = map["DamageImmunities"];
    this.ConditionImmunities = map["ConditionImmunities"];
    this.DamageResistances = map["DamageResistances"];
    this.Senses = map["Senses"];
    this.Languages = map["Languages"];
    this.Challenge = map["Challenge"];
    this.XP = map["XP"];

  }
}

Item itemFromMap(Map<String, dynamic> map) {
  switch(map["Discriminator"]) {
    case "MonsterItem": return MonsterItem.fromMap(map);
    case "MonsterItems": return MonsterItems.fromMap(map);
  }
  return Item.fromMap(map);
}

List<Item> itemsFromMapList(List<Map<String, dynamic>> mapList) {
  return List.generate(mapList.length, (i) {
    return itemFromMap(mapList[i]);
  });
}