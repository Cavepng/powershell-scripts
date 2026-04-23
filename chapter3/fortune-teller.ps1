#********************************************
#
# Date:        2026-04-23
# Version:     1.0
# Description: Fortune telling script.
#
#********************************************

#Clear the terminal screen
Clear-Host

#Define variables
$question = "" #Stores player question
$status = "Play" #Controls game loop
$randomNo = New-Object System.Random #Stores a random object
$answer = 0 #stores a randomly generated number
$time = (get-date).hour #Gets the current hour

#Welcome screen

Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "            WELCOME TO THE WINDOWS "
Write-Host
Write-Host
Write-Host
Write-Host "            POWERSHELL FORTUNE TELLER"
Write-Host  
Write-Host
Write-Host
Write-Host "            By MH"
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " Press Enter to continue."


Read-Host #Pauses script until player presses enter
Clear-Host #Clears terminal

#Instructions
Write-Host
Write-Host "The fortune teller is a very busy and impatient mystic. Make"
Write-Host
Write-Host " your questions brief and simple and only expect to receive "
Write-Host
Write-Host "Yes / No styled answers."
Write-Host
Write-Host
Write-Host 
Write-Host  
Write-Host
Write-Host
Write-Host 
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " Press Enter to continue."


Read-Host #Pauses script until player presses enter
Clear-Host #Clears terminal

#Continue gameplay until player decides to stop
while ($status -ne "Stop") {
    #Ask player first question
    while ($question -eq "") {
        Clear-Host
        Write-Host
        $question = Read-Host "What is your question?"
    }
    $question = ""

    #Used random object to get number between 1-4.
    #Selects an answer based on the random number.
    $answer = $randomNo.Next(1, 5)

    #If it is in the afternoon, the fortune teller will be cranky.
    if ($time -gt 12) {
        Write-Host
        if ($answer -eq 1) { "Humph. The answer is no!" }
        if ($answer -eq 2) { "Grrrr. The answer is NEVER!" }
        if ($answer -eq 3) { "Hmmm. The answer is unclear!" }
        if ($answer -eq 4) { "Huh. The answer is yes!" }
    }

    #If it's morning, the fortune teller will be in a good mood.
    else {
        Write-Host
        if ($answer -eq 1) { "Ah. The answer is yes!" }
        if ($answer -eq 2) { "Ah. The answer is always!" }
        if ($answer -eq 3) { "Ah. The answer is uncertain!" }
        if ($answer -eq 4) { "Ah. The answer is no!" }
    }

    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host 
    Write-Host  
    Write-Host
    Write-Host
    Write-Host 
    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host
    Write-Host " Press Enter to continue."


    Read-Host #Pauses script until player presses enter
    Clear-Host #Clears terminal

    $reply = read-host "Press Enter to ask another question or type Q to quit"
    if ($reply -eq "Q") { $status = "Stop" }
}

Clear-Host

Write-Host
Write-Host "Very well then. Please return again to get your questions answered."
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host 
Write-Host  
Write-Host
Write-Host
Write-Host 
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " Press Enter to continue."

Read-Host
Clear-Host


