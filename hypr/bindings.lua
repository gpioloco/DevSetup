-- Keep only your personal keybinding overrides here. Add new bindings with
-- o.bind or replace defaults with o.rebind.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding. o.rebind takes the same arguments as o.bind.
-- This example replaces the default file manager with Flea.
-- o.rebind("SUPER + SHIFT + F", "File manager", { launch = "flea" })

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, { panel = "omarchy.emojis" })

-- Dictation keys from before Alt + Space and Right Alt became the defaults.
-- Remove these lines to give the keys back to applications.
if o.dictation_installed and o.dictation_installed() then
  o.bind("SUPER + CTRL + X", "Toggle dictation", "omarchy-dictation toggle")
  o.bind_hold("F9", "Start dictation (push-to-talk)", "omarchy-dictation start", "Stop dictation (push-to-talk)", "omarchy-dictation stop")
end

o.bind("ALT + RETURN", "Terminal", o.launch_terminal())
o.bind("ALT + SHIFT + Q", "Close active window", hl.dsp.window.close())

o.bind("ALT + H", "Move focus left", hl.dsp.focus({ direction = "l" }))
o.bind("ALT + L", "Move focus right", hl.dsp.focus({ direction = "r" }))
o.bind("ALT + K", "Move focus up", hl.dsp.focus({ direction = "u" }))
o.bind("ALT + J", "Move focus down", hl.dsp.focus({ direction = "d" }))

local workspace_keys = { "Q", "W", "E", "R", "T" }
local move_keys = { "Z", "X", "C", "V", "B" }
for workspace = 1, 5 do
  o.bind("ALT + " .. workspace_keys[workspace], "Switch to workspace " .. workspace, o.workspaces.focus(workspace))
  o.bind("ALT + SHIFT + " .. move_keys[workspace], "Move window to workspace " .. workspace, o.workspaces.move_window(workspace))
end

o.bind("ALT + SHIFT + H", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.rebind("ALT + SHIFT + L", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))
o.bind("ALT + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("ALT + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))

o.bind("SUPER + ALT + BACKSPACE", "Toggle dimming", "bash ~/.config/omarchy/themes/aetheria/dimming.sh")
