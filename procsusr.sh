#/bin/bash
#this script summarizes the number of processes

declare -A myProcs

for currentprocesses in `ps -eo user|tail -n +2`; do
    myProcs[$currentprocesses]=$(( ${myProcs[$currentprocesses]} + 1 ))
done

for user in ${!myProcs[@]}; do
    echo "User $user has ${myProcs[$user]} processes running"
done
if [[ "${myProcs[nobody]}" -gt 0 ]]; then
    echo "User nobody has processes!"
fi