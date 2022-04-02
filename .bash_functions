# Navigate and view
function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls
}

function pid() {
    pgrep -U nick.wang $1
}

function ntf () {
  npm test -- -- $@
}

# Git assistance

gcob () {
  git checkout -b $@ origin/$@
}

dpull () {
  BRANCH=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD);
  git pull origin $BRANCH;
}

dpush () {
  BRANCH=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD);
  git push origin $BRANCH;
}

dpushf () {
  BRANCH=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD);
  git push -f origin $BRANCH;
}

deletebranch () {
  git branch -D $@
}

killp() {
    kill -9 $@
}

function gbr () {
 git branch "$@";
 git checkout "$@";
}

sb () {
  MY_BRANCH=`git branch | grep \* | cut -d ' ' -f2`
}

ret () {
  git checkout $MY_BRANCH
}