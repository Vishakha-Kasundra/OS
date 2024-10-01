# Armstrong Number

is_armstrong_number() {
    local num=$1
    local sum=0
    local len=${#num}
    for (( i=0; i<len; i++ )); do
        digit=${num:i:1}
        sum=$(( sum + digit ** len ))
    done
    if [[ $sum -eq $num ]]; then
        echo "$num is an Armstrong number."
    else
        echo "$num is not an Armstrong number."
    fi
}
read -p "Enter a number to check if it's an Armstrong number: " user_input
is_armstrong_number "$user_input"


# Pyramid

rows=5
for (( i=1; i<=rows; i++ )); do
    for (( j=i; j<rows; j++ )); do
        echo -n " "
    done
    for (( k=1; k<=i; k++ )); do
        echo -n "*"
    done
    echo ""
done


#Create 30 Directory at a time

base_dir="directory"
for (( i=1; i<=30; i++ )); do
    mkdir "${base_dir}${i}"
done
echo "30 directories created successfully."

# File Search Operation

touch A1.txt
echo "File 'A1.txt' created."
if grep -qi "fruit" A1.txt; then
    echo "The word 'Fruit' was found in A1.txt:"
    grep -i "fruit" A1.txt
else
    echo "The word 'Fruit' was not found in A1.txt."
fi


# Marksheet

echo "Enter Subject1 marks: "
read Subject1
echo "Enter Subject2 marks: "
read Subject2
echo "Enter Subject3 marks: "
read Subject3

total=$((Subject1 + Subject2 + Subject3))
echo "Total = $total"
per=$((total / 3))
echo "Percentage = $per"
if [[ "$per" -ge 80 ]]; then
    echo "Grade A"
elif [[ "$per" -ge 60 ]]; then
    echo "Grade B"
elif [[ "$per" -ge 30 ]]; then
    echo "Grade C"
else
    echo "Fail"
fi


# Odd Even 


is_number() {
    [[ $1 =~ ^-?[0-9]+$ ]]
}
read -p "Enter a number: " input
if ! is_number "$input"; then
    echo "Error: Please enter a valid numeric value."
    exit 1
fi
if (( input % 2 == 0 )); then
    echo "$input is even."
else
    echo "$input is odd."
fi
