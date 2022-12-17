__picolove_version = "0.1a"

scale = 4
xpadding = 8.5
ypadding = 3.5
__pico_resolution = { 128, 128 }

function love.conf(t)
	t.console = true

	t.identity = "pico2d"

	-- Love 11.x is only supported
	if t.version ~= "0.9" and t.version ~= "0.10" then
		-- show default version if no match
		t.version = "11.4"
	end

	t.window.title = "PICÖ2D"
--	t.window.icon = "icon.png"
	t.window.width = __pico_resolution[1] * scale + xpadding * scale * 2
	t.window.height = __pico_resolution[2] * scale + ypadding * scale * 2
	t.window.resizable = true
end
