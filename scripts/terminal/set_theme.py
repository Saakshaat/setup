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

async def main(conn):
  presets = sys.argv[1:]
  rand_preset = random.choice(presets)
  await set_colors(conn, rand_preset)
  await set_preferences_theme(conn)

iterm2.run_until_complete(main)
