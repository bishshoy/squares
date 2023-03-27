# 🟨 Squares - macOS scripts for window management

![Squares](images/Screenshot%202023-03-27%20at%206.52.24%20PM.png)

## What is it?

Squares 🟨 is a bunch of very simple AppleScripts for window positioning and resizing.
It is not a native app in itself. It relies on the macOS's built-in scripting language,
AppleScript, and the macOS's built-in script execution tool, Script Editor.

## Why?

The organization I work for does not allow me to install any third-party apps especially
those that ask for accessiblity and keyboard monitoring permissions, for security
reasons. So, I developed these scripts to help me with my daily work. The scripts are
very simple and do not require any third-party apps to run. They are also very easy for
anyone to understand and verify that they do not do anything malicious.

## How to install and use the scripts?

1. Download the repository as a zip file and unzip it.
2. Open the Script Editor app.
3. In the Script Editor app, go to Script Editor > Settings > General and check the box
   "Show Script menu in menu bar".
4. Turn off Show Computer scripts.
5. A new icon will appear in the top-right menu bar. Click on it and select Open Scripts
   Folder > Open User Scripts Folder.
6. Copy the scripts from the unzipped folder to the Scripts folder that just opened.
7. Close the Scripts folder and the Script Editor app.
8. You can now use the scripts by clicking on the icon in the top-right menu bar and
   selecting the script you want to run.

## Adding keyboard shortcuts

Keyboard triggers can be added either via Automator or via the Shortcuts app. However,
both ways are kinda slow, meaning that when you press the shortcut, it takes a momemt
for the script to run. I have not found a way to make the scripts run faster than that.
If you know how to do that, please let me know.

Both the Automator and the Shortcuts ways are discussed here:
https://apple.stackexchange.com/questions/175215/how-do-i-assign-a-keyboard-shortcut-to-an-applescript-i-wrote

I found using the Shortcuts app to be a bit easier.
