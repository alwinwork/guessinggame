
README.md:
	touch README.md
	echo "# Title: Guessing Game" >> README.md
	echo "### Alwin Solanky" >> README.md
	echo "Number of lines in guessinggame.sh:">> README.md 
	wc -l <  guessinggame.sh >> README.md
	echo "">>README.md
	date +"%D %T  Execution of Make" >> README.md

clean:
	rm README.md 

