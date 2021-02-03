for suspectList in $(cat suspects.txt | grep Owner | sed 's/Owner: //' | tr ' ' '_'); do
suspect=$(echo $suspectList | tr '_' ' ')
#echo $suspect
if [ $(cat mystery/memberships/AAA mystery/memberships/Delta_SkyMiles mystery/memberships/Museum_of_Bash_History | grep "$suspect" | wc -l) -ge 3 ]; then
echo $suspect, thats who!
fi
done