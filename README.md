## Usage
```
./build.sh && ./run.sh
```

## Signin issues
It seems as though the application calls `xdg-open` when you click signin. I don't really want to debug `xdg-utils` and how it bridges between the host and the container. In the meantime, you can drag and drop the link from the GUI into your host's web browser.

