
set now to current date
set soon to now + 60 * 10

tell application "Calendar"
	tell calendar "UCI Classes"
		set curr to first event whose start date is less than or equal to soon and end date is greater than or equal to now
		set currname to summary of curr
		
	end tell
end tell
currname as text

set thecommandstring to "echo \"" & currname & "\" | sed  -E \"s/([Ll]ecture|[Dd]iscussion|[Ss]eminar)//g\"" as string
set sedResult to do shell script thecommandstring
set notename to sedResult
set thecommandstring to "echo \"" & notename & "\" | sed  -E \"s/ $//g\"" as string
set sedResult to do shell script thecommandstring
set notename to sedResult

set thecommandstring to "echo \"" & notename & "\" | sed  -E \"s/ //g\"" as string
set sedResult to do shell script thecommandstring
set notetag to sedResult
set notebody to "#school/" & notetag & " 
---
"

-- set notename to do shell script "/usr/bin/python -c 'import sys, urllib; print urllib.quote(sys.argv[1])' " & quoted form of notename
-- set notebody to do shell script "/usr/bin/python -c 'import sys, urllib; print urllib.quote(sys.argv[1])' " & quoted form of notebody



set xurl to "bear://x-callback-url/create?title=" & encode_text(notename, true, true) & "&text=" & encode_text(notebody, true, true)

tell application "Bear"
	open location xurl
	activate
end tell

tell application "System Events" to tell process "Bear"
	key code 36
end tell

on encode_char(this_char)
	set the ASCII_num to (the ASCII number this_char)
	set the hex_list to {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"}
	set x to item ((ASCII_num div 16) + 1) of the hex_list
	set y to item ((ASCII_num mod 16) + 1) of the hex_list
	return ("%" & x & y) as string
end encode_char

on encode_text(this_text, encode_URL_A, encode_URL_B)
	set the standard_characters to "abcdefghijklmnopqrstuvwxyz0123456789"
	set the URL_A_chars to "$+!'/?;&@=#%><{}[]\"~`^\\|*"
	set the URL_B_chars to ".-_:"
	set the acceptable_characters to the standard_characters
	if encode_URL_A is false then set the acceptable_characters to the acceptable_characters & the URL_A_chars
	if encode_URL_B is false then set the acceptable_characters to the acceptable_characters & the URL_B_chars
	set the encoded_text to ""
	repeat with this_char in this_text
		if this_char is in the acceptable_characters then
			set the encoded_text to (the encoded_text & this_char)
		else
			set the encoded_text to (the encoded_text & encode_char(this_char)) as string
		end if
	end repeat
	return the encoded_text
end encode_text
