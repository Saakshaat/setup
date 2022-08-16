# some common git commands
alias rep="git status"

alias b='git branch'

# create new branch
nb(){
    git checkout -b $1
}
ch(){
   git checkout $1
}
# push changes to branch defined in first argument
push(){
    current_branch=$(git symbolic-ref --short HEAD| pbcopy | pbpaste)
    git push origin $( if [[ $1 == "" ]]; then echo $current_branch; else echo $1; fi )
}
# commit all tracked changes with the first argument as message
ca(){
    git commit -am "$1"
}

# commit only the added changes with the first argument as message
cm(){
    git commit -m "$1"
}
# check commit history upto $1
log() {
    git log -$1
}
# clone a repo using `gco <org> <repo> <branch|master> <-r?>`
function gco {
    org=$1
    repo=$2
    branch=$( if [[ $3 == "" ]]; then echo master ; else echo $3; fi )
    recursive=$( if [[ ${4:-} == "-r" ]]; then echo --recursive ; else echo ""; fi )
    git clone -b $branch $recursive --single-branch https://github.com/$org/$repo
}
