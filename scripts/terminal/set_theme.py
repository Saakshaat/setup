#!/usr/bin/env python3

import iterm2
import random

async def SetPresetInSession(connection, session, preset_name):
	preset = await iterm2.ColorPreset.async_get(connection, preset_name)
	if not preset:
		return
	profile = await session.async_get_profile()
	if not profile:
		return
	await profile.async_set_color_preset(preset)

async def main(connection):
	app = await iterm2.async_get_app(connection)
	presets_str = sys.argv[1]
	presets_array = presets_str.split("\n")
	print(presets_array)
	async with iterm2.NewSessionMonitor(connection) as mon:
		while True:
			session_id = await mon.async_get()
			session = app.get_session_by_id(session_id)
			if session:
				await SetPresetInSession(connection, session, random.choice(presets_array)

print("sdjfkjlfkegw")
iterm2.run_forever(main)
