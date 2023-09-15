SCF = {}
SCF.modTableKey = "SubclassCompatibilityFramework"
SCF.modPrefix = "SCF"
SCF.modVersion = { major = 2, minor = 1, revision = 0, build = 0 }

Api = {}
Globals = {}
Ext.Require("SubclassSupport/_Globals.lua")
Ext.Require("SubclassSupport/_SubclassCompatibilityFramework.lua")
Ext.Require("SubclassSupport/API.lua")

-- Insert our Supported Classes
Api.InsertClass("barbarian", "0d4a6b4b-8162-414b-81ef-1838e36e778a")
Api.InsertClass("bard", "26f64038-6033-48d5-9da7-38e8c95ce712")
Api.InsertClass("cleric", "1dbce574-fff1-49be-b7da-704f9b73cad9")
Api.InsertClass("mc_cleric", "366cde9c-db0c-43ce-a49c-fb140e084b3c")
Api.InsertClass("druid", "95322dde-349a-4101-964f-9aa46abd890b")
Api.InsertClass("fighter", "23eacff0-9efe-4ea6-b031-19075cc96b63")
Api.InsertClass("monk", "296468cb-3640-4460-9f44-b30ee820a9ed")
Api.InsertClass("paladin", "b60618d1-c262-42b5-9fdd-2c0f7aa5e5af")
Api.InsertClass("mc_paladin", "1f5396ad-65e3-4ed5-a339-d76b11af96ea")
Api.InsertClass("ranger", "e6179c57-47e9-4f83-831e-28b73f4b5d0d")
Api.InsertClass("rogue", "6f8d3e70-9b20-4fe0-914f-0f8f19206329")
Api.InsertClass("sorcerer", "42af9bda-9ac0-4564-920b-f9ca1588d6ee")
Api.InsertClass("mc_sorcerer", "e115c732-80b1-4ae1-bf04-cee44660d64f")
Api.InsertClass("warlock", "a7767dc5-e6ab-4e05-96fd-f0424256121c")
Api.InsertClass("mc_warlock", "20015e25-8aa9-41bf-b959-aa587ba0aa27")
Api.InsertClass("wizard", "d6184c47-5b99-4e63-95ac-02f8ce4ccda1")

Ext.Require("SubclassSupport/ClassBarbarian.lua")
Ext.Require("SubclassSupport/ClassBard.lua")
Ext.Require("SubclassSupport/ClassCleric.lua")
Ext.Require("SubclassSupport/ClassDruid.lua")
Ext.Require("SubclassSupport/ClassFighter.lua")
Ext.Require("SubclassSupport/ClassMonk.lua")
Ext.Require("SubclassSupport/ClassPaladin.lua")
Ext.Require("SubclassSupport/ClassRanger.lua")
Ext.Require("SubclassSupport/ClassRogue.lua")
Ext.Require("SubclassSupport/ClassSorcerer.lua")
Ext.Require("SubclassSupport/ClassWarlock.lua")
Ext.Require("SubclassSupport/ClassWizard.lua")