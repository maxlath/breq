module.exports = (object, properties) ->
  for key, val of properties
    object[key] = val
  return object
