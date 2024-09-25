# // UNIT 3

# // write a sals script to display the initial of your full name.

# get_initials()
# {
#     echo "Enter Your Full Name: "
#     read Full_Name
#     local initials=""
# Full_Name=$(echo "$Full_Name" | tr '[:lower:]' '[:upper:]')
# for word in $Full_Name; do
# initials+=$(echo "$word" | cut -c1)
# done 
# echo "Initials: $initials"
# }
# read -p "Enter Your Full Name: " Full_Name
# get_initials "$Full_Name"

# -----------------------------------------------------------
# write a sales script to display digit at odd position in each 5 digit number.

# extract_odd_digits(){
#     local number=$1
# odd_digits="${number:0:1}${number:2:1}${number:4:1}"
# echo "Digits at odd Positions: $odd_digits"
# }
# read -p "Enter a 5-Digits number: " number
# if ! [[ "$number" =~ ^[0-9]{5}$ ]]; then
# echo "Invalid Input. Please Enter Exat 5 Digit Number"
# exit 1
# fi
# extract_odd_digits "$number"

# -----------------------------------------------------------
#write a sales script to display 6 digits number in a specific format.

# format_number() {
#     local number=$1
#     echo "$number" | sed ':a;s/\B[0-9]\{3\}\>/,&/;ta'
# }

# read -p "Enter a 6-Digit Number: " number

# if ! [[ "$number" =~ ^[0-9]{6}$ ]]; then
#     echo "Invalid Input"
#     exit 1
# fi

# formatted_number=$(format_number "$number")
# echo "Formatted Number: $formatted_number"

# --------------------------------------------------------------------

# UNSET
# echo "Enter First Number: "
# read Number1
# echo "Enter Second Number: "
# read Number2
# echo "Number 1 is $Number1"
# echo "Number 2 is $Number2"

# unset Number1
# unset Number2

# echo "Unset Clear: $Number1"
# echo "Unset Clear: $Number2"

#--------------------------------------------------------------------

#Create a Script Called as find to search through a file & print lines starting with a specific letter.

# touch a1.txt

# echo "Enter File Name: "
# read filename
# echo "Enter Letter: "
# read Letter

# if [[ ! -f "$filename" ]]; then
# echo "Error : $filename not found."
# exit 1
# fi

# while IFS= read -r line; do
# if [[ "$line" == *"$letter"* ]]; then
# echo "$line"
# fi
# done< "$filename"
# exit 0 

# Write a Script to calculate grade based on marks obtain in three subject

# echo "Enter Subject1 marks: "
# read Subject1
# echo "Enter Subject2 marks: "
# read Subject2
# echo "Enter Subject3 marks: "
# read Subject3

# total=$((Subject1+Subject2+Subject3))
# echo "Total=$total"

# per=$((total/3))
# echo "Per=$per"

# if [[ "$per" -ge "80" ]]; then
# echo "Grade A"
# elif [[ "$per" -le "60" ]] && [[ "$per" -ge "80" ]]; then
# echo "Grade B"
# if [[ "$per" -ge "30" ]] && [[ "$per" -ge "60" ]]; then
# echo "Grade C"
# else
# echo "fail"
# fi

#-------------------------------------------------------------------

#implement ENCRYPRTION for a 4 digit number
# encrypt_number() {
#     local number="$1"
#     local shift=3
#     local encrypted=""
#     if ! [[ "$number" =~ ^[0-9]{4}$ ]]; then
#         echo "Invalid Input. Enter Only 4-Digit Number"
#         exit 1
#     fi
#     for (( i = 0; i < ${#number}; i++ )); do
#         digit=${number:i:1}
#         encrypt_digit=$(( (digit + shift) % 10 ))
#         encrypted+=$encrypt_digit
#     done    
#     echo "Encrypted number: $encrypted"   
# }
# read -p "Enter a 4-Digit Number for encryption: " number
# encrypt_number "$number"

#-----------------------------------------------------------------------

#implement DECRYPTIONfor a 4 digit number
# decrypt_number() {
#     local encrypt_number="$1"
#     local shift=3
#     local decrypted=""
#     if ! [[ "$encrypt_number" =~ ^[0-9]{4}$ ]]; then
#         echo "Invalid Input. Enter only a 4-digit number."
#         exit 1
#     fi
#     for (( i = 0; i < ${#encrypt_number}; i++ )); do
#         digit=${encrypt_number:i:1}
#         decrypted_digit=$(( (digit - shift + 10) % 10 ))  # Ensure no negative results
#         decrypted+=$decrypted_digit
#     done
#     echo "Decrypted Number: $decrypted"
# }
# read -p "Enter a 4-Digit Encrypted Number for decryption: " number
# decrypt_number "$number"


#--------------------------------------------------------------------------

#CONDITION
# echo "Enter Any Number: "
# read Number 

# if [[ "$Number" -gt 0 ]]; then
#     echo "Positive"
# elif [[ "$Number" -lt 0 ]]; then
#     echo "Negative"
# else
#     echo "Zero"
# fi

#---------------------------------------------------------------------------
#UNIT 4 
#reverse number

# echo "Enter Any Number: "
# read Number

# if ! [[ "$Number" =~ ^[0-9]+$ ]]; then
# echo "Enter Only Positive Number"
# exit 1 
# fi

# reverse=""
# while [ "$Number" -gt 0 ]; do
# digit=$((Number % 10))
# reverse="${reverse}${digit}"
# Number=$((Number / 10))
# done

# echo "Reverce Number: $reverse"


#-------------------------------------------------------------
#develop a script to list line of text file

# mkdir p1
# cd p1
# pwd
# touch p1
# Directory="p1"
# if [[ ! -d "$Directory" ]]; then
#     echo "The Directory Does Not Found"
#     exit 1
# fi

# for file in "$Directory"/*.txt; do
# if [[ -e "$file" ]]; then
# echo -e "\nLines in '$file':"
# nl -w2 -s': ' "$file"
# else
# echo "No text Found in this '$Directory'."
# fi
# done

#-------------------------------------------------------------
#DELETE FOLDER OR FILE

# files_and_folder=("t1.txt" "t1")

# delete_with_confirmation(){
#     local item="$1"
#     if [[ ! -e "$item" ]]; then
#         echo "Error: '$item' Not Found"
#         return
#     fi
#     read -p "Are you sure you want to delete '$item'? (y/n): " confirmation
#     if [[ "$confirmation" =~ ^[Yy]$ ]]; then
#         if [[ -d "$item" ]]; then
#             rm -r "$item"
#             echo "'$item' Directory Deleted"
#         else
#             rm "$item"
#             echo "'$item' File Deleted"
#         fi
#     else
#         echo "Deletion Cancelled"
#     fi
# }
# for item in "${files_and_folder[@]}"; do
#     delete_with_confirmation "$item"
# done

#-------------------------------------------------------------

#convert number to words

# number_to_words() {
#     local number=$1
#     local words=""

#     units=("zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine")
#     teens=("ten" "eleven" "twelve" "thirteen" "fourteen" "fifteen" "sixteen" "seventeen" "eighteen" "nineteen")
#     tens=("" "" "twenty" "thirty" "forty" "fifty" "sixty" "seventy" "eighty" "ninety")

#     if [ "$number" -ge 100 ]; then
#         words+="${units[$((number / 100))]} hundred "
#         number=$((number % 100))
#     fi

#     if [ "$number" -ge 20 ]; then
#         words+="${tens[$((number / 10))]} "
#         number=$((number % 10))
#     elif [ "$number" -ge 10 ]; then
#         words+="${teens[$((number - 10))]} "
#         number=0
#     fi

#     if [ "$number" -gt 0 ]; then
#         words+="${units[$number]} "
#     fi

#     # Return the resulting words
#     echo "$words"
# }

# static_number=556
# result=$(number_to_words "$static_number")
# echo "$result"

#---------------------------------------------------------------------------
#COMMANDS

# Print a greeting and name
echo "Hello";
echo "I am Vishakha Kasundra";

# Read command for user input
read -p "Enter your name: " Name
echo "Name is: $Name"

# Create a file
touch A1.txt
echo "File 'A1.txt' created."

# Search for the word 'Fruit' in the file, case-sensitive
echo "GREP COMMAND WITH CASE CHECK, PRINTING ONLY (Fruit) WORD:"
grep "Fruit" A1.txt

# Retrieve all instances of the word 'Fruit' in the file, case-insensitive
echo "RETRIEVE ALL 'Fruit' WORD (CASE-INSENSITIVE):"
grep -i "Fruit" A1.txt

# Retrieve only lines that do not contain the word 'Fruit', case-insensitive
echo "RETRIEVE ONLY LINES THAT DO NOT CONTAIN 'Fruit' (CASE-INSENSITIVE):"
grep -v -i "Fruit" A1.txt

# Display line numbers for lines that contain the word 'Fruit'
echo "SHOW LINE NUMBERS FOR MATCHES:"
grep -n "Fruit" A1.txt

# Count occurrences of the word 'Fruit'
echo "COUNT THE NUMBER OF OCCURRENCES OF THE WORD 'Fruit':"
grep -c "Fruit" A1.txt



# Display current date and time
echo "Current Date and Time: $(date)"

# List all files including hidden ones
echo "HIDDEN FILES:"
ls -a

# Log the system's hostname into A1.txt
echo "Logging hostname into A1.txt:"
hostname >> A1.txt

# Find files that do not have a .txt extension
echo "Finding files without a .txt extension:"
touch A2.sql
touch A2.png
find . ! -name "*.txt"

# Display current username and hostname
echo "Current username: $(whoami)"
echo "Current hostname: $(hostname)"

# Search for 'Z01' in A1.txt, show line number and count matches
echo "Checking line number and count of 'Z01' in A1.txt:"
grep -n "Z01" A1.txt

# Find start position of 'NOKIA' in A1.txt (lines starting with 'NOKIA')
echo "Finding lines that start with 'NOKIA' in A1.txt:"
grep ^"NOKIA" A1.txt

