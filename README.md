# Go Builder

## Usage
Build container using `make build`. The image will be tagged as marb.ec/go-builder.

To build your go sources, execute the container:

```
docker run --rm -v $(pwd)/:/go -e BUILDPATH=src/myProject marb.ec/go-builder
```

Please specify the `BUILDPATH` environment variable relative to the `GOPATH` which points to `/go` as default.
Depending on the plattform you use you can override the `GOOS` and `GOARCH` variables. Defaults are `linux` and `amd64`.

## Expected Folder Structure

The go builder expects a folder structure like you have in your personal `GOPATH` folder.
Have your sources and your dependencies in the `src` folder.