<<comment

Write a script that asks the user "Are you sure? (y/n)".

Use a case statement.

Handle "y", "Y", "yes", "YES" all as Pattern 1 (Approve).

Handle everything else as Pattern 2 (Deny).

comment

read -p "Are you sure? (y/n)" response

case "$response" in
	"y" | "Y" | "yes" | "YES")
		echo "Approve"
		;;
	*)
		echo "Deny"
		;;
esac

