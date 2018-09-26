# teams-airbag
Simple hack to keep Teams running on MacOS.

# Optional Setup
My installation of Teams required a verifiation click every time it was opened.  To make this as smooth as possible I used the following to bypass that warning.
`sudo xattr -d com.apple.quarantine /Applications/Microsoft\ Teams.app`

# How to use
This project contains a simple shell script that detects when Teams is not running and starts it up.  Suggested use is to add it to your crontab on a schedule that you deem fit.  Personally, I think a check every 20 minutes seems from 7am-5pm M-F like a good place to start.

## Example
`> crontab -e`
Then add the line:
`*/20	7,8,9,10,11,12,13,14,15,16,17	*	*	1,2,3,4,5	/path/to/repo/teams-airbag/teams-airbag.sh`

# Bonus feature
You'll no have a good idea of how often Teams was crashing on you as it will pop-up in your face when it's restarted!