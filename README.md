
## Usage example

### General Usage

```sh
    docker run --rm -v $(pwd):/data wkhtmltopdf \
        --viewport-size 1280x1024 \
        --page-size A4 \
        http://www.google.com/ \
        /data/test.pdf
```


# Wkhtmltopdf Docker Container

This docker container lets you run wkhtmltopdf in a docker container.

## Building the image

```sh
docker build -t wkhtmltopdf .
```

## Using the image

### General Usage

```sh
    docker run --rm -v $(pwd):/data wkhtmltopdf \
        --viewport-size 1280x1024 \
        --page-size A4 \
        http://www.google.com/ \
        /data/test.pdf
```

The mounted volume can be used to send local html files and to save
the output.


## Bugs and questions

The development of the container takes place on 
[Github](https://github.com/kenvac/docker-wkhtmltopdf). If you
have a question or a bug report to file, you can report as a github issue.


## Authors and Contributors

This image was built at [AccessBookings](http://www.accessbookings.com).
