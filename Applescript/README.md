# Applescript files

These are all various Applescript and Automator workflows that I use regularly. These were never designed to be shared so paths may not make any sense. Automator workflows are archived for use in git.

## Screenshot Management scripts
Handle screenshot storage and manipulation

#### Manage screenshots
Compresses new screenshots and and places overflow into an archive folder. Should be attached as a folder action for where you place your screenshots (change with `defaults write com.apple.screencapture /path/to/folder`). Requires Zopfli to be installed, which can be done through Homebrew.

#### OCR screenshots
Uses Tesseract to OCR screenshots, and place the output text into the macOS comment field for indexing by Spotlight. Should be attached as a folder action to wherever you want new screenshots to be OCRed (like the output of the Manage Screenshots workflow). Requires the "Put OCR text in comment" service, and for Tesseract to be installed, which can be done through Homebrew.

#### Copy last screenshot to clipboard
Copies the last screenshot (most recent in your screenshots folder) to the clipboard. Can be bound to a shortcut using BetterTouchTool (I chose ⌘⌥V). You can also add a shortcut to a script using the Keyboard preferences pane, but then wont work in some applications. 

## Services
These appear in the right click menu for files in finder or text selection, depending on what they support

#### Put OCR text in comment
OCRs an image file and places the output text into the macOS comment field (viewable with ⌘I) to make them searchable through Spotlight. Needs the accompanying [Bash script](https://github.com/drewcassidy/dotfiles/blob/master/Shell/Scripts/OCR). Requires Tesseract to be installed, which can be done through Homebrew.
