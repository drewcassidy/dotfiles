on run {input, parameters}
	set maxcount to 10
	set sourcepath to "/Users/drewcassidy/Documents/Images/Screenshots"
	set sourcefolder to (POSIX file sourcepath) as alias
	tell application "Finder"
		set screenshots to sort (get every document file of folder sourcefolder) by creation date
		set screenshotcount to number of items in screenshots
		
		set latest to last item of screenshots as alias
		
		set the clipboard to (read latest as TIFF picture)
	end tell
end run