function parser() {

    if [ "$1" == "PASS" ]
    then
        echo ""${green}""$1""${reset}",$2,$3"
        echo "$1,$2,$3" >> $output
    elif [ "$1" == "FAIL" ]
    then
        echo ""${red}""$1""${reset}",$2,$3"
        echo "$1,$2,$3" >> $output
    else
        echo "$1,$2,$3" >> $output
    fi
}

parser "$1" "$2" "$3"