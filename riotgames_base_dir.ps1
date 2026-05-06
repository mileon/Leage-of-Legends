# Each line who start with a # special character is a comment.

# Link to the documentation of new-item if you want to understand the code.
# German
# https://learn.microsoft.com/de-de/powershell/module/microsoft.powershell.management/new-item?view=powershell-7.6
# English US 
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item?view=powershell-7.6


# Make a copy of the original directory on C:\Riot Games to a destination that you like. As example D:\Games\Riot Games\

# Change the value of $OriginalPathRiotGames.

$OriginalPathRiotGames = 'C:\Riot Games'
$NewPathToRiotGames = 'D:\Games\Riot Games\'

# Create the Junction
New-Item -Type Junction -Path $OriginalPathRiotGames -Value $NewPathToRiotGames

Set-ItemProperty -Path $OriginalPathRiotGames -Name Attributes -Value 'Hidden'

# If you want to remove the directory with the powershell
# Remove-Item $OriginalPathRiotGames