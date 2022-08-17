#!/usr/bin/env python3

import sys
import random

import iterm2

PROFILES=["Default"]

async def set_colors(conn, preset_name):
  preset = await iterm2.ColorPreset.async_get(conn, preset_name)
  for partial in (await iterm2.PartialProfile.async_query(conn)):
        if partial.name in PROFILES:
            await partial.async_set_color_preset(preset)

async def set_preferences_theme(conn):
  # set apperance theme to `minimal`
  await iterm2.preferences.async_set_preference(conn, "TabStyleWithAutomaticOption", 5)

async def set_profile(conn):
  default = await iterm2.profile.Profile.async_get_default(conn)
  # set initial wdir to reuse last session
  await default.async_set_initial_directory_mode(iterm2.profile.InitialWorkingDirectory.INITIAL_WORKING_DIRECTORY_RECYCLE)
  # set fonts
  font_name = "Monaco"
  font_size = "14"
  await default.async_set_normal_font("{} {}".format(font_name, font_size))
  # set icons
  await default.async_set_icon_mode(iterm2.profile.IconMode.AUTOMATIC)

async def main(conn):
  presets = sys.argv[1:]
  rand_preset = random.choice(presets)
  await set_colors(conn, rand_preset)
  await set_preferences_theme(conn)
  await set_profile(conn)

iterm2.run_until_complete(main)
