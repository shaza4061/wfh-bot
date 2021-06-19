#Description: 
#    this script will move mouse across the screen after a set interval

#How to use:
#    1. Save this file as wfh-bot.ps1 in your computer
#    2. Right-click on the file and choose "Run with Powershell"
#       Note: You may be prompted with a security warning when running this script
#        for the first time. Answer "yes"
#    3. To terminate the script, press Ctrl+C


#Interval in seconds between each mouse movement
param($idle = 60)#Move the cursor every 60 seconds

Add-Type -AssemblyName System.Windows.Forms
echo "Bot is running. Enjoy your day!"
while ($true) {
    $X = [System.Windows.Forms.Cursor]::Position.X
    $Y = [System.Windows.Forms.Cursor]::Position.Y
    $width = [System.Windows.Forms.SystemInformation]::VirtualScreen.Width
    $height = [System.Windows.Forms.SystemInformation]::VirtualScreen.Height

    if (($X -ne 0) -and ($Y -ne 0)) {
        #reset to origin (0,0)
        [Windows.Forms.Cursor]::Position = "0,0"
    } else {
        [Windows.Forms.Cursor]::Position = "$($width),$($height)"
    }
    #wait
    Start-Sleep -Seconds $idle
}

