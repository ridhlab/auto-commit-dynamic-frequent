rand=$(($RANDOM % 5))
iteration=$(($i+1))
echo $iteration
for ((i=1; i<=$iteration; i++)); do
    sleep 5 &
    d=`date '+%Y-%m-%dT%H:%M:%SZ'`
    wait 
    echo $d > LAST_UPDATED
    wait 
    git config --local user.email "mohridwan1707@gmail.com"
    wait 
    git config --local user.name "ridhlab"
    wait 
    git add -A 
    wait 
    echo "Iteration $i"
    wait 
    git commit -m "bot: auto commit at $d"
    wait
done