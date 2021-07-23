#!/bin/sh

echo "Updating Dock..."

set -x
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/System/Applications/Messages.app"
dockutil --no-restart --add "/System/Applications/Mail.app"
dockutil --no-restart --add "/System/Applications/Maps.app"
dockutil --no-restart --add "/System/Applications/Photos.app"
dockutil --no-restart --add "/System/Applications/FaceTime.app"
dockutil --no-restart --add "/System/Applications/Calendar.app"
dockutil --no-restart --add "/System/Applications/Contacts.app"
dockutil --no-restart --add "/System/Applications/Reminders.app"
dockutil --no-restart --add "/System/Applications/Notes.app"
dockutil --no-restart --add "/System/Applications/Music.app"
dockutil --no-restart --add "/Applications/Things3.app"
dockutil --no-restart --add "/System/Applications/System Preferences.app"
dockutil --add ~/Downloads --display stack # Implicitly restarts the Dock.
set +x
