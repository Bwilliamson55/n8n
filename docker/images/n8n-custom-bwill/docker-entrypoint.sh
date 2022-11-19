#!/bin/sh
if [ "$#" -gt 0 ]; then
  # Got started with arguments
  COMMAND=$1;

  if [[ "$COMMAND" == "n8n" ]]; then
    shift
    (exec node /usr/local/bin/n8n "$@")
  else
    exec node "$@"
  fi

else
# Got started without arguments
exec node /usr/local/bin/n8n
fi
