# MIYOO
set(BUILD_ASSETS_MPQ OFF)

set(DEVILUTIONX_SYSTEM_LIBSODIUM OFF)
set(NONET ON)

set(STREAM_ALL_AUDIO_MIN_FILE_SIZE 4096)
set(DEFAULT_AUDIO_BUFFER_SIZE 768)
set(DEFAULT_AUDIO_RESAMPLING_QUALITY 2)

# MIYOO hardware can only work with 16bit surfaces (RGB565).
set(DEVILUTIONX_DISPLAY_TEXTURE_FORMAT "SDL_PIXELFORMAT_RGB565")

# Physical buttons are accesed via SDLKeys
set(PREFILL_PLAYER_NAME ON)
set(HAS_KBCTRL 1)
set(DEVILUTIONX_GAMEPAD_TYPE Nintendo)
set(KBCTRL_BUTTON_DPAD_LEFT SDLK_LEFT)
set(KBCTRL_BUTTON_DPAD_RIGHT SDLK_RIGHT)
set(KBCTRL_BUTTON_DPAD_UP SDLK_UP)
set(KBCTRL_BUTTON_DPAD_DOWN SDLK_DOWN)
set(KBCTRL_BUTTON_B SDLK_LALT)
set(KBCTRL_BUTTON_A SDLK_LCTRL)
set(KBCTRL_BUTTON_Y SDLK_LSHIFT)
set(KBCTRL_BUTTON_X SDLK_SPACE)
set(KBCTRL_BUTTON_RIGHTSHOULDER SDLK_BACKSPACE)
set(KBCTRL_BUTTON_LEFTSHOULDER SDLK_TAB)
set(KBCTRL_BUTTON_TRIGGERRIGHT SDLK_PAGEUP)
set(KBCTRL_BUTTON_TRIGGERLEFT SDLK_PAGEDOWN)
set(KBCTRL_BUTTON_RIGHTSTICK SDLK_RSHIFT) # R3 hotkey
set(KBCTRL_BUTTON_LEFTSTICK SDLK_RALT) # L3 hotkey
set(KBCTRL_BUTTON_START SDLK_RETURN) # Start
set(KBCTRL_BUTTON_BACK SDLK_ESCAPE) # Select

# Map HOME button to Esc (Menu in-game / Exit in-menu).
set(REMAP_KEYBOARD_KEYS "{SDLK_RCTRL,SDLK_ESCAPE}")