audio-app:
	gcc -Wall audio-app.c -o audio-app `pkg-config --cflags --libs gstreamer-1.0`

clean:
	rm -f audio-app
