Globals.SupportedSubClasses = {}
Globals.ClassUUIDs = {}
Globals.MulticlassClasses = {}
Globals.ClassProgressions = {}
Globals.Cache = {}
Globals.Debug = false
Globals.ShowWarnings = false

-- Including the non-level-one-multiclass-specific entries to be sure we
-- capture edge cases

Globals.MulticlassClasses["cleric"] = "366cde9c-db0c-43ce-a49c-fb140e084b3c"
Globals.MulticlassClasses["1dbce574-fff1-49be-b7da-704f9b73cad9"] = "366cde9c-db0c-43ce-a49c-fb140e084b3c"
Globals.MulticlassClasses["paladin"] = "1f5396ad-65e3-4ed5-a339-d76b11af96ea"
Globals.MulticlassClasses["b60618d1-c262-42b5-9fdd-2c0f7aa5e5af"] = "1f5396ad-65e3-4ed5-a339-d76b11af96ea"
Globals.MulticlassClasses["sorcerer"] = "e115c732-80b1-4ae1-bf04-cee44660d64f"
Globals.MulticlassClasses["42af9bda-9ac0-4564-920b-f9ca1588d6ee"] = "e115c732-80b1-4ae1-bf04-cee44660d64f"
Globals.MulticlassClasses["warlock"] = "20015e25-8aa9-41bf-b959-aa587ba0aa27"
Globals.MulticlassClasses["a7767dc5-e6ab-4e05-96fd-f0424256121c"] = "20015e25-8aa9-41bf-b959-aa587ba0aa27"

Globals.SelectorFunctions = {
  SelectSpells = "SelectSpells",
  AddSpells = "AddSpells",
  SelectSkills = "SelectSkills",
  SelectPassives = "SelectPassives",
  SelectAbilityBonus = "SelectAbilityBonus",
  SelectSkillsExpertise = "SelectSkillsExpertise",
  SelectEquipment = "SelectEquipment"
}

Globals.CacheTypes = {
  "Feat",
  "Progression"
}

Globals.Attributes = {
  aSTR = "Strength",
  aDEX = "Dexterity",
  aCON = "Constitution",
  aINT = "Intelligence",
  aWIS = "Wisdom",
  aCHA = "Charisma"
}

Globals.ProgressionStringTypes = {
  Boosts = "Boosts",
  PassivesAdded = "PassivesAdded",
  PassivesRemoved = "PassivesRemoved",
  Requirements = "Requirements"
}

Globals.ListTypes = {
  -- Abilities = "AbilityList",
  SpellList = "SpellList",
  SkillList = "SkillList",
  PassiveList = "PassiveList",
  -- Equipment = "EquipmentList",
  -- Colors = "ColorDefinition", Partially supported, figure out actual arrays
  -- CampChestTemplate = "CampChestTemplates"
}

Globals.ListNodes = {
  -- Abilities = "Abilities", Not Supported
  SpellList = "Spells",
  SkillList = "Skills",
  PassiveList = "Passives",
  -- Equipment = "EquipmentList", Not Supported
  -- Colors = "ColorDefinition", Partially supported, figure out actual arrays
}
