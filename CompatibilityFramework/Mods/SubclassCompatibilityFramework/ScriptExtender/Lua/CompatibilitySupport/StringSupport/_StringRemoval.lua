local function DetectStringType(type)
  Utils.Info("Entering DetectStringType")
  return Utils.IsKeyInTable(Globals.StringTypes, type)
end

local function RemoveString(payload)
  Utils.Info("Entering RemoveString")
  local target = payload.Target or payload.TargetProgression
  local fileType = payload.FileType or "Progression"

  local separator = Globals.FieldSeparator[payload.Type]

  if DetectStringType(payload.Type) then
    local field = Utils.CacheOrRetrieve(target, fileType)[payload.Type]
    local fieldStrings = Utils.createTableFromString(field, separator)
    local result = {}

    for _, value in pairs(payload.Strings) do
      if not Utils.IsInTable(fieldStrings, value) then
        table.insert(result, value)
      end
    end

    field = table.concat(result)
  else
    Utils.Error(Strings.ERROR_INVALID_PROGRESSION_TYPE)
  end
end

function HandleRemoveString(payload)
  if payload ~= nil then
    Utils.Info("Entering HandleRemoveString")
    RemoveString(payload)
  else
    Utils.Error(Strings.ERROR_EMPTY_PAYLOAD)
  end
end
