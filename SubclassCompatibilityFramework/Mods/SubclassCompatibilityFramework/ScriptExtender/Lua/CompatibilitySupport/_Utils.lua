function Utils.CacheOrRetrieveProgression(guid)
  if Globals.ProgressionCache ~= nil and Globals.ProgressionCache[guid] ~= nil then
    return Globals.ProgressionCache[guid]
  else
      Globals.ProgressionCache[guid] = Ext.StaticData.Get(guid, "Progression")
    return Globals.ProgressionCache[guid]
  end
end

function Utils.CacheOrRetrieveList(guid, type)
  if Globals.ListCache ~= nil and Globals.ListCache[guid] ~= nil then
    return Globals.ListCache[guid]
    else
      Globals.ListCache[guid] = Ext.StaticData.Get(guid, type)
    return Globals.ListCache[guid]
  end
end

function Utils.Stringify(obj)
  return Ext.Json.Stringify(obj)
end

function Utils.Info(message)
  if Globals.Debug == true then
    Ext.Utils.Print(Strings.INFO_TAG .. message)
  end
end

function Utils.Error(message)
  Ext.Utils.Print(Strings.ERROR_TAG .. message)
end

function Utils.IsInTable(arr, val)
  if arr ~= nil then
    for _, value in pairs(arr) do
      if val == value then
        return true
      end
    end
  end
  return false
end

function Utils.IsKeyInTable(arr, key)
  if arr ~= nil then
    return arr[key] ~= nil
  end
end

function Utils.GetKeyFromvalue(arr, val)
  if arr ~= nil then
    for key, value in pairs(arr) do
      if val == value then
        return key
      end
    end
  end
end

function Utils.AddToTable(arr, val)
  if arr ~= nil then
    table.insert(arr, val)
  end
end

function Utils.TableMerge(args)
  local result = {}
  for _, t in ipairs(args) do
    for k, v in pairs(t) do
      Ext.Utils.Print(Utils.Stringify(k) .. " : " .. Utils.Stringify(v))
      table.insert(result, v)
    end
  end
  Ext.Utils.Print(Utils.Stringify(result))
  return result
end

-- TODO: Send this to Community Library
function Utils.IsGuid(string)
  local x = "%x"
  local t = { x:rep(8), x:rep(4), x:rep(4), x:rep(4), x:rep(12) }
  local pattern = table.concat(t, '%-')

  return string:match(pattern)
end
