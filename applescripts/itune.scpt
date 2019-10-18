(* Get the current song from iTunes or Spotify *)
if application "iTunes" is running then
  tell application "iTunes"
    set theName to name of the current track
    set theArtist to artist of the current track
    try
      return "♫  " & theName & " - " & theArtist
    on error err
    end try
  end tell
end if
