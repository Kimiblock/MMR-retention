#!/bin/bash

echo "[Info] Current settings from env var: Host @ ${mmrHost}; Access Token sha1 $(echo ${mmrToken} | sha1sum); Purge date ${mmrPDate}"

mmrPTS=$(date -d "${mmrPDate}" "+%s")

curl -L -X POST "https://${mmrHost}/_matrix/media/unstable/admin/purge/old?access_token=${mmrToken}&before_ts=${mmrPTS}&include_local=true"