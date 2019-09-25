
README
----------

This is chromium docker image for Raspberry PI.

ref:
https://qiita.com/koduki/items/0ed303dac5d32646194f


## Run

Pull/run [koduki/rpi-chromium](https://hub.docker.com/r/koduki/rpi-chromium).

```bash
docker run -it -e DISPLAY=:0 --privileged koduki/rpi-chromium
```

## Build

### x86

```bash
$ docker buildx build -t koduki/rpi-chromium
```

### Raspberry PI(ARM)

```bash
$ docker buildx build -t koduki/rpi-chromium --platform linux/arm/v7 --push .
```