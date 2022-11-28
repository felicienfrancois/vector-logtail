# vector-logtail
Plug and play [Vector](https://vector.dev/) container customized for using with [logtail](https://betterstack.com/logtail)

- Built from docker image __timberio/vector:0.25.1-alpine__ and logtail default vector config __2022-11-28__
- Fixed parsing compilation issue with latest vector
- Added multiline merging rule

Configuration through environment variables :
```
LOGTAIL_SOURCE_TOKEN: the logtail source token
```
