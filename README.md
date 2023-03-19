## JLESS

Read json files using jless without installing. Mount the file you to view as a volume

```commandline
docker run --rm  -it -v $(pwd)/test.json:/test.json hortonhearsadan/jless test.json
```
