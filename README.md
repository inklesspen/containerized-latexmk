The Dockerfile in this directory is designed to render the LaTeX file and then output the PDF and logs.

Run with this command:

`docker build --output type=local,dest=out .`

If you are using an older version of Docker, the `--output` flag may not be supported unless you set `DOCKER_BUILDKIT=1` in the environment. In that case, run:

`DOCKER_BUILDKIT=1 docker build --output type=local,dest=out .`
