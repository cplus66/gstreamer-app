# gstreamer-app
GStreamer audio application, including initializing libraries, creating elements, packing elements together in a pipeline and playing this pipeline.

Usage: audio-app <ogg-file>

Example:
```
./audio-app file.ogg
Now playing: file.ogg
Running...
Dynamic pad created, linking demuxer/decoder
End of stream
Returned, stopping playback
Deleting pipeline
```

## Reference
https://gstreamer.freedesktop.org/documentation/application-development/basics/helloworld.html?gi-language=c#
