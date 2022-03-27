local gears = require("gears")

root.keys(gears.table.join(
  require("keys.global.apps"),
  require("keys.global.awesome"),
  require("keys.global.layout"),
  require("keys.global.screen"),
  require("keys.global.tag"),
  require("keys.global.media"),
  require("keys.global.client")
))
