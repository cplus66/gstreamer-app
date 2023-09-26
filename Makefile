all: audio-app basic-tutorial-1

TARGETS=audio-app basic-tutorial-1

GSTREAMER_CONF += `pkg-config --cflags --libs gstreamer-1.0`

audio-app: audio-app.c
	gcc  -Wall $< -o $@ $(GSTREAMER_CONF)

basic-tutorial-1: basic-tutorial-1.c
	gcc  -Wall $< -o $@ $(GSTREAMER_CONF)

clean:
	rm -f $(TARGETS)
