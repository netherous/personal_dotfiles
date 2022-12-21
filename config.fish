
source ~/.profile
if status is-interactive
# Commands to run in interactive sessions can go here
 if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa -G'
	abbr -a ll 'exa -lh'
	abbr -a lsa 'exa -lahFG'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lsa 'ls -lah'
end

end
