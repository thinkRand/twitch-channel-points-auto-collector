# Twitch Channel Points Auto-Collector

An AutoHotkey script that monitors a specific pixel for color changes and automatically clicks it when a change is detected. Specifically designed for collecting Twitch channel points when the bonus button appears.

## Purpose

This script was created for Twitch viewers to automatically collect channel point bonuses. It monitors the exact pixel where the channel points bonus button appears and clicks it immediately when the button becomes available (changes color).

## How It Works on Twitch

1. **The button appears**: When a channel points bonus is available, a button appears (typically with a specific color)
2. **Script detects change**: The script monitors one pixel of that button location
3. **Automatic collection**: When the pixel color changes (button appears), the script instantly clicks it
4. **Points collected**: You automatically receive your channel points without manually clicking

## Installation

1. Install [AutoHotkey](https://www.autohotkey.com/) (version 1.1 or later)
2. Download the script file
3. Double-click to run the script before opening Twitch

## Setup

1. **Open Twitch** in your browser and navigate to any channel
2. **Run the script** (double-click the .ahk file)
3. **Set the monitoring point**:
   - Position your mouse cursor exactly over the channel points button
   - Press `Ctrl + Left Click` to set this pixel as your monitoring point
   - You'll see a "pixel added" tooltip confirmation
4. **Let the script work**: Now whenever that button appears in the future, the script will automatically click it

## Controls

| Shortcut | Action | Twitch Use Case |
|----------|--------|-----------------|
| `Ctrl + Left Click` | Set pixel to monitor | Set the channel points button location |
| `Shift + Left Click` | Reset monitored pixel | Clear current point to set a new one |
| `Esc` | Exit script | Stop the auto-collector |


## Requirements

- Windows operating system
- AutoHotkey v1.1 or later
- Twitch.tv open in a browser (Chrome, Firefox, Edge, etc.)

## Important Notes

- The button location must remain consistent (don't resize/move the browser window after setup)
- The script monitors for ANY color change - ensure nothing else changes that exact pixel
- Works best with the browser in a fixed position on screen
- You may need to reset the point if you move/resize your browser window

**Disclaimer**: This script is for personal use. Please review Twitch's Terms of Service regarding automation tools. Use responsibly and at your own discretion.
