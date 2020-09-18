all: README.md

README.md: guessinggame.sh
	echo "# guessinggame.sh\n" > README.md
	echo "## Final project for The Unix Workbench course\n" >>README.md
	date >>README.md
	echo "\nThe number of lines contained in **guessinggame.sh**:" >>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >>README.md

clean: 
	rm README.md
