# Supported tags and respective Dockerfile links

*  [`0.2.0`, `0.2`, `0`, `latest` (Dockerfile)](https://github.com/touchifyapp/docker-mini-breakpad-server/blob/master/Dockerfile)

This image is updated via [pull requests to the `touchifyapp/docker-mini-breakpad-server` GitHub repo](https://github.com/touchifyapp/docker-mini-breakpad-server/pulls).

# [mini-breakpad-server](https://github.com/electron/mini-breakpad-server#readme): Minimum collecting server for crash reports sent by [google-breakpad](https://github.com/google/breakpad).

`Breakpad` is a set of client and server components which implement a crash-reporting system.

## How to use

### Basic Usage

The following sample shows how to run the container to collect crash reports.

```bash
docker run -dt \
  --name breakpad-server \
  -p 1127:1127 \
  -v ${PWD}/pool:/app/pool \
  touchify/mini-breakpad-server
```

### Configuration

 * **MINI_BREAKPAD_SERVER_PORT:** Sets the port to listen on.
 * **MINI_BREAKPAD_SERVER_ROOT:** Sets the Base URL of breakpad server.
 * **MINI_BREAKPAD_SERVER_TOKEN:** Set `webhook` token configuration.

## License

View [license information](https://github.com/touchifyapp/docker-mini-breakpad-server/blob/master/LICENSE) for the software contained in this image.

## Supported Docker versions

This image is officially supported on Docker version 1.12+.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

## User Feedback

### Documentation

Documentation for this image is stored in [the `touchifyapp/docker-mini-breakpad-server` GitHub repo](https://github.com/touchifyapp/docker-mini-breakpad-server).
Be sure to familiarize yourself with the repository's README.md file before attempting a pull request.

### Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/touchifyapp/docker-mini-breakpad-server/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/touchifyapp/docker-mini-breakpad-server/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.