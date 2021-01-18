# cosbench

## Build Docker Image

```
docker build .
```

## RUN

```
ctr run -d --rm --net-host --env ip=x.x.x.x --env t=both --env n=1 --env u=true cosbench:latest cosbench
```

## References

https://github.com/Nexenta/nedge-cosbench
