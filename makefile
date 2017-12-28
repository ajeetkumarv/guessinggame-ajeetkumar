README.md: guessinggame.sh
	echo "##Title: **Guessing game**" > README.md
	echo "##make run at" >> README.md
	date >> README.md
	echo "##Number of lines in guessinggame.sh" >> README.md
	cat guessinggame.sh | wc -l >> README.md
