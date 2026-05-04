#********************************************
#
# Date:        2026-05-04
# Version:     1.0
# Description: Seinfeld trivia program.
#              Five questions.
#
#********************************************

Clear-Host

#Define Variables
$question1 = ""
$question2 = ""
$question3 = ""
$question4 = ""
$question5 = ""

#Tracks number of correct answers
$noCorrect = 0

#Welcome screen
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "            WELCOME TO THE SEINFELD"
Write-Host
Write-Host
Write-Host
Write-Host "            TRIVIA QUIZ"
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

#Pauses script until user presses enter
Read-Host
Clear-Host

Write-Host "This quiz will test your knowledge of Seinfeld trivia."
Write-Host "This test consists of five equally weighted questions."
Write-Host "At the end of the quiz your answers will be checked and"
Write-Host "you will be assigned a skill level using this scale:"
Write-Host
Write-Host "    Score:  5 correct = Jerry"
Write-Host "    Score:  4 correct = Kramer"
Write-Host "    Score:  3 correct = Elaine"
Write-Host "    Score:  2 correct = George"
Write-Host "    Score:  1 correct = Newman"
Write-Host "    Score:  0 correct = Babo (Clueless)"
Write-Host
Write-Host " Press Enter to continue."

#Pauses script until user presses enter
Read-Host

while (($question1 -ne "a") -and ($question1 -ne "b") -and ($question1 -ne "c") -and ($question1 -ne "d")){
    Clear-Host
    Write-Host
    Write-Host "What is Kramer's first name?"
    Write-Host
    Write-Host " A. Peterman"
    Write-Host " B. Cosmo"
    Write-Host " C. Puddy"
    Write-Host " D. Peck"
    Write-Host
    $question1 = Read-Host "Type the letter that matches the correct answer and press enter."
}

while (($question2 -ne "a") -and ($question2 -ne "b") -and ($question2 -ne "c") -and ($question2 -ne "d")){
    Clear-Host
    Write-Host
    Write-Host "What was George's favorite pretend career?"
    Write-Host
    Write-Host " A. Bra salesman"
    Write-Host " B. Real estate"
    Write-Host " C. City planner"
    Write-Host " D. Architect"
    Write-Host
    $question2 = Read-Host "Type the letter that matches the correct answer and press enter."
}

while (($question3 -ne "a") -and ($question3 -ne "b") -and ($question3 -ne "c") -and ($question3 -ne "d")){
    Clear-Host
    Write-Host
    Write-Host "For whom did Elaine buy white socks?"
    Write-Host
    Write-Host " A. Mr. Lippman"
    Write-Host " B. Mr. Peterman"
    Write-Host " C. Mr. Pitt"
    Write-Host " D. Puddy"
    Write-Host
    $question3 = Read-Host "Type the letter that matches the correct answer and press enter."
}

while (($question4 -ne "a") -and ($question4 -ne "b") -and ($question4 -ne "c") -and ($question4 -ne "d")){
    Clear-Host
    Write-Host
    Write-Host "What is Kramer scared of?"
    Write-Host
    Write-Host " A. Swimming"
    Write-Host " B. Fried chicken"
    Write-Host " C. Clowns"
    Write-Host " D. The dentist"
    Write-Host
    $question4 = Read-Host "Type the letter that matches the correct answer and press enter."
}

while (($question5 -ne "a") -and ($question5 -ne "b") -and ($question5 -ne "c") -and ($question5 -ne "d")){
    Clear-Host
    Write-Host
    Write-Host "Where do Jerry's parents live?"
    Write-Host
    Write-Host " A. Kansas"
    Write-Host " B. New York"
    Write-Host " C. California"
    Write-Host " D. Florida"
    Write-Host
    $question5 = Read-Host "Type the letter that matches the correct answer and press enter."
}

Clear-Host
Write-Host
Write-Host " Press Enter to see the results."
Read-Host

#Scoring
if ($question1 -eq "b") { $noCorrect++ }  
if ($question2 -eq "d") { $noCorrect++ }  
if ($question3 -eq "c") { $noCorrect++ }  
if ($question4 -eq "c") { $noCorrect++ }  
if ($question5 -eq "d") { $noCorrect++ }  

#Assign ranking

if ($noCorrect -eq 0) {
    Write-Host
    Write-Host " You completely failed. You got 0 questions correct."
    Write-Host
    Write-Host "Your Seinfeld triva knowledge is no better than Babo's."
}

if ($noCorrect -eq 1) {
    Write-Host
    Write-Host " You got 1 question correct"
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is no better than Newman's."
}

if ($noCorrect -eq 2) {
    Write-Host
    Write-Host " You got 2 questions correct"
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is approximately that of George's."
}

if ($noCorrect -eq 3) {
    Write-Host
    Write-Host " You got 3 questions correct"
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is approximately that of Elaine's."
}

if ($noCorrect -eq 4) {
    Write-Host
    Write-Host " You got 4 questions correct"
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is as good Kramer's."
}

if ($noCorrect -eq 5) {
    Write-Host
    Write-Host " You completely failed. You got 0 questions correct."
    Write-Host
    Write-Host "Your knowledge of Seinfeld trivia is every bit as good as Jerry's."
}

Read-Host
Clear-Host

Write-Host
Write-Host "Thank you for playing the Seinfeld Trivia Quiz."

Read-Host
Clear-Host