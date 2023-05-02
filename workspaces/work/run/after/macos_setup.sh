#!/bin/sh

echo "Updating Dock..."

set -x
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Zoom.us.app"
dockutil --no-restart --add "/Applications/Notion.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/BBEdit.app"
dockutil --no-restart --add "/System/Applications/Mail.app"
dockutil --no-restart --add "/System/Applications/Calendar.app"
dockutil --no-restart --add "/System/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/System/Applications/System Settings.app"
dockutil --no-restart --add "/System/Applications/Music.app"
dockutil --add ~/Downloads --display stack # Implicitly restarts the Dock.
set +x
