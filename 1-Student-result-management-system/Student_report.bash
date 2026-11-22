names=("Tanvir" "Rahim" "Karim" "Sakib")
marks=(92 75 85 60)
attendance=(95 80 88 70)

n=${#names[@]}

grade(){
    m=$1

    if((m>=90)); then
        echo "A+"
    elif((m>=80)); then
        echo "A"
    elif((m>=70)); then
        echo "B"
    elif((m>=60)); then
        echo "C"
    else
        echo "F"
    fi
}

view_all(){
    for((i=0;i<n;i++))
    do
        echo "------------------------"
        echo "Student: ${names[i]}"
        echo "Marks: ${marks[i]}/100"
        echo "Attendance: ${attendance[i]}%"
        echo "Grade: $(grade ${marks[i]})"

        if((marks[i]>=40)); then
            echo "Status: Passed"
        else
            echo "Status: Failed"
        fi
    done
}

search_student(){
    read -p "Enter student name to search: " search

    found=0

    for((i=0;i<n;i++))
    do
        if [[ "${names[i],,}" == "${search,,}" ]]
        then
            found=1

            echo "--- Student Report: ${names[i]} ---"
            echo "Marks: ${marks[i]}/100"
            echo "Attendance: ${attendance[i]}%"
            echo "Grade: $(grade ${marks[i]})"

            if((marks[i]>=40)); then
                echo "Status: Passed 🎉"
            else
                echo "Status: Failed"
            fi

            break
        fi
    done

    if((found==0)); then
        echo "Student not found!"
    fi
}

scholarship(){
    for((i=0;i<n;i++))
    do
        if((marks[i]>=90 && attendance[i]>=90))
        then
            echo "${names[i]} is Eligible for Scholarship"
        else
            echo "${names[i]} is Not Eligible for Scholarship"
        fi
    done
}


while true
do
    echo ""
    echo "=== Student Result Management System ==="
    echo "1. View All Students Report"
    echo "2. Search Student Result"
    echo "3. Check Scholarship Eligibility"
    echo "4. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            view_all
            ;;
        2)
            search_student
            ;;
        3)
            scholarship
            ;;
        4)
            echo "Thank you!"
            break
            ;;
        *)
            echo "Invalid Choice! Try Again."
            ;;
    esac
done
