function all(){
  local -n arr1=$1
  local -n arr2=$2
  local -n arr3=$3
  
  x=${#arr1[@]}
  for((i=0;i<x;i++))
  do
        echo "Name :${arr1[i]}"
        echo "Price :${arr2[i]}"
        echo "discunt :${arr3[i]}%"
  done
}

function add(){
    local -n arr1=$1
    local -n arr2=$2
    local -n arr3=$3

    read -p "Enter the new name: " n_name
    read -p "Enter the price: " n_price
    read -p "Enter the discount %: " n_discount

    count=0
    x=${#arr1[@]}

    for((i=0;i<x;i++))
    do
        if [[ "${arr1[i]}" == "$n_name" ]]
        then
            ((count++))
            echo "Same value is available"
        fi
    done
    if((count==0))
    then
        arr1+=("$n_name")
        arr2+=("$n_price")
        arr3+=("$n_discount")

        echo "Product added successfully!"
    fi
} 
function filter(){
    local -n arr1=$1
    local -n arr3=$2
    x=${#arr1[@]}
    read -p "Enter the minimum discount :" m_discount
    for((i=0;i<x;i++))
    do 
        if ((arr3[i]>=$m_discount))
        then
            echo "Product name : ${arr1[i]}"
            echo "Discount ammount : ${arr3[i]}"
        fi 
        
    done 
}
 
names=("Amm" "Jam" "Kathal" "Lichu")
prices=(100 200 300 400)
discunt=(10 30 21 24)
while true
do 
    echo "Choose the option :"
    echo "1.Show all data "
    echo "2.Add new data "  
    echo "3.Fitar by discount"
    echo "4. Exit"
    read -p "Enter the choice :" ch
    if(($ch==1))
    then
        all names prices discunt
    elif(($ch==2))
    then
        add names prices discunt 
    elif(($ch==3))
    then
        filter names discunt
    elif(($ch==4))
    then
        break
    else
        echo "Invalid input"
    fi 
done