
rand=$(($RANDOM % 5))

echo $rand

for ((i=1; i<=$rand; i++)); do
    sleep 5 &
    d=`date '+%Y-%m-%dT%H:%M:%SZ'`
    wait 
    echo $d > LAST_UPDATED
    wait 
    git config --local user.email "mohridwan1707@gmail.com"
    wait 
    git config --local user.name "ridhlab"
    wait 
    git add -A #&& git commit -m "bot: auto commit $i"
    wait 
    echo "Iteration $i"
    wait 
    git commit -m "bot: auto commit $i"
    wait
done
