# gstreamer-app
GStreamer audio application, including initializing libraries, creating elements, packing elements together in a pipeline and playing this pipeline.

Usage: 
```
audio-app <ogg-file>
```

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

## Bus
A bus is a simple system that takes care of forwarding messages from the streaming threads to an application in its own thread context.
Every pipeline contains a bus by default, so applications do not need to create a bus or anything. The only thing applications should do is set a message handler on a bus, which is similar to a signal handler to an object.

## Pads
GStreamer defines two pad directions: source pads and sink pads. This terminology is defined from the view of within the element: elements receive data on their sink pads and generate data on their source pads. There exists sink pads, through which data enters an element, and source pads, through which data exits an element.  It follows naturally that source elements only contain source pads, sink elements only contain sink pads, and filter elements contain both.

```
.----------.    .----------.    .-----------.
| src elm. |    | filter   |    | sink elm. |
|         src->sink       src->sink         |
'----------'    '----------'    '-----------'
```

## DeMUX
A demuxer contains one sink pad, through which the muxed data arrives, and multiple source pads, one for each stream found in the container:

## Reference
https://gstreamer.freedesktop.org/documentation/application-development/basics/helloworld.html?gi-language=c#
