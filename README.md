## JLESS

jless — a command-line JSON viewer
https://jless.io/user-guide.html
https://github.com/PaulJuliusMartinez/jless

Read json files using jless without installing. Mount the file you to view as a volume

```commandline
docker run --rm  -it -v $(pwd)/test.json:/test.json hortonhearsadan/jless test.json
```

https://github.com/hortonhearsadan/docker-jless
https://hub.docker.com/r/hortonhearsadan/jless