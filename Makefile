# <makefile>
# Objects: metabase, data
# Actions: download, start, package
help: ## Targets which do not have help text are not shown
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
	    IFS=$$'#' ; \
	    help_split=($$help_line) ; \
	    help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
	    help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
	    printf "%-30s %s\n" $$help_command $$help_info ; \
	done
# </makefile>


# <metabase>
metabase_version=v0.25.2

download_metabase: ## Downloads metabase jar; uses wget
	cp metabase.jar old-metabase.jar
	wget -c --retry-connrefused --tries=0 http://downloads.metabase.com/$(metabase_version)/metabase.jar

start_metabase: ## Starts metabase server
	java -jar metabase.jar
# </metabase>