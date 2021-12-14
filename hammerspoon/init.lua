hs.hotkey.bind({"control", "shift"}, "R", function() hs.reload() end)
hs.alert.show("Config loaded")

local inputSource = {
	english = "com.apple.keylayout.ABC",
	korean = "com.apple.inputmethod.Korean.2SetKorean",
}

hs.hotkey.bind({}, 'f20', function ()
    local current = hs.keycodes.currentSourceID()
	if not (current == inputSource.english) then
        hs.eventtap.keyStroke({}, 'right')
		hs.keycodes.currentSourceID(inputSource.english)
	end
    hs.eventtap.keyStroke({}, 'escape')
end)

hs.hotkey.bind("ctrl", "space", function ()
	local current = hs.keycodes.currentSourceID()
	if current == inputSource.korean then
		hs.keycodes.currentSourceID(inputSource.english)
	else
		hs.keycodes.currentSourceID(inputSource.korean)
	end
end)

hs.window.animationDuration = 0

function openAndMaximize(bundleId)
    local app = hs.application.open(bundleId, 1, true)
    app:mainWindow():maximize()
end

workspaces = {
    "com.jetbrains.intellij",
    "com.google.Chrome",
    "com.jetbrains.datagrip",
    "com.tinyspeck.slackmacgap",
    "notion.id",
    [0] = "com.workflowy.desktop",
    ["\\"] = "com.googlecode.iterm2"
}

for k, v in pairs(workspaces) do
    hs.hotkey.bind("cmd", tostring(k), function () openAndMaximize(workspaces[k]) end)
end

