## Example for using Docker to compile programs for a Raspberry Pi
This example will compile a wheel package for [matrix-lite-py](https://github.com/matrix-io/matrix-lite-py), but it can easily be modified to suit different needs.

## Run the example

Build the image
```bash
docker build -t pi -f Dockerfile .
```

Run the container
> The container will output a compiled .whl file in the volume folder.
```bash
docker run --name=pi_emulator -d -v /INSERT_OUTPUT_FOLDER:/volume pi
```
