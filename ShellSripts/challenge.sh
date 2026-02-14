<<comment
Instructor Challenge: You have a list: servers=("prod" "dev" "test" "stage"). Task: Write the commands to remove "test" and then "fix the gap" so "stage" moves into index 2.
comment

servers=("prod" "dev" "test" "stage")

#Remove test 

unset servers[2]

echo "The updated array is ${servers[@]}"
echo "The indexs after deletion is ${!servers[@]}"

#Repair the gap

servers=("${servers[@]}")
echo "Updated index is ${!servers[@]}"
