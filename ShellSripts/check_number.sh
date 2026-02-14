read -p "Enter number to test postivie,negative or zero" number

if [ "$number" -gt 0 ]; then
	echo "The number is positive"
elif [ "$number" -lt 0 ]; then
	echo "The number is negative"
else
	echo "The number is 0"
fi
