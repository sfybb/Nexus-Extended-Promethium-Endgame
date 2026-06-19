--settings.lua

data:extend({
  {
    type = "bool-setting",
    name = "nexus-show-welcome-message",
    setting_type = "runtime-per-user", -- Jeder Spieler kann es für sich selbst an-/ausschalten
    default_value = true -- Standardmäßig ist die Nachricht eingeschaltet
  }
})
