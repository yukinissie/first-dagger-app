#!/bin/bash

alpine=$(dagger query <<EOF
{
  container {
    from(address:"alpine:latest") {
      withExec(args:["uname", "-nrio"]) {
        stdout
      }
    }
  }
}
EOF
)

echo $alpine
