function guess(){
    actual_count=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please enter your guess"
        read  number
        if [ $number -lt $actual_count ]
        then
            echo "Your guess is Lesser than the actual count"
        elif [ $number -gt $actual_count ]
        then
            echo "Your guess is Greater than the actual count"
        else
            echo " Congratulation,you guessed it right !"
        break;
        fi
    done
}
echo "This shell program is to guess the number of files in the current directory!"
guess
