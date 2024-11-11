run:
	@read -p "Enter commit comments:" commit_comments; \
		commit -m `$$commit_comments`
	git push

export last_commit_hash=$(shell git log --format="%H" -n 1)
export last_plot_dir_name=$(shell ls -lt ./plots/ | tail -1 | awk '{print $$NF}')

run2:
	mv plots/$$last_plot_dir_name plots/$$last_commit_hash
		