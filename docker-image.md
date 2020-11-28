A docker image is made of 
* root filesystem (not always complete)
* one or more configuration files

Analyse alpine:3.12.1

pull the image locally:
```
docker pull alpine:3.12.1
```

run it
```
docker run -it alpine:3.12.1 sleep 120
```

in a separate terminal
```
pstree
```

the content of the image:
```bash
docker image inspect alpine:3.12.1
```

downloading a docker image with its digest:
```bash
docker pull alpine@sha256:c0e9560cda118f9ec63ddefb4a173a2b2a0347082d7dff7dc14272e7841a5b5a
```

```bash
mkdir alpine_content
docker image save alpine:3.12.1 > alpine_content/alpine_3_21_1.tar
cd alpine_content
tar -xvf alpine_3_12_1.tar
```

cleanup
```
rm -rf alpine_content
```