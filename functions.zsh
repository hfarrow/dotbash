# Tail log file with bat
btail() {
    tail -n 80 -f $1 | bat --paging=never -l log
}

# Open nearest unity editor log
unitylog() {

}
