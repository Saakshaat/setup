# utility to remove last downloaded file from Downloads utility
function ddel {
	file=`ls -t ~/Downloads | head -1`
	echo Deleting $file...
	rm -rf ~/"/Downloads/$file"
	echo $file successfully deleted!
}
# thefuck alias
eval $(thefuck --alias)
