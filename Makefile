all: mpv_thumbnail_script

mpv_thumbnail_script: mpv_thumbnail_script_server mpv_thumbnail_script_client

mpv_thumbnail_script_server:
	@if [ ! -d 'build' ]; then mkdir 'build'; fi
	./concat_files.py -r cat_server.json

mpv_thumbnail_script_client:
	@if [ ! -d 'build' ]; then mkdir 'build'; fi
	./concat_files.py -r cat_osc.json

clean:
	@if [ -d 'build' ]; then\
		rm -r 'build';\
	fi
