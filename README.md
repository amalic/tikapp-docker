# tikapp-docker

## Build
```shell
docker build -t tikapp .
```

## Run (sample pdf)
```shell
 wget http://unec.edu.az/application/uploads/2014/12/pdf-sample.pdf
 docker run -v $PWD:/data tikapp -a -f /data/pdf-sample.pdf
```
