# helpful docker/docker-compose cmds
alias dcu="docker-compose up"
alias dcd="docker-compose down"

dtu(){
	file=$( if [[ $1 == "" ]]; then echo docker-compose.test.yml ; else echo $1; fi )
	docker-compose -f $file up
}

dtd(){
	docker-compose -f $1 down
}
