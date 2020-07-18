## Guessing Game##
#GUESS:User will try to guess the number of files in the directory#


options=-1
correct=7
typeset -i number=0

#Game Begins
echo "How many files are in the working directory?"

###Answer
(( answer = 7))

while (( options !=answer )); do
        number=number+1
        read -p "Take a guess $number: " choice
        if (( choice < correct )); then
                echo "Too Low"
                echo "Try again"
        elif (( choice > correct )); then
                echo "Too High"
                echo "Try again"
        fi
done

#Game Finished
echo "CONGRATULATIONS!!"
echo "You guessed it right!!"
