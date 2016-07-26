#!/usr/bin/env bash
cd ~/
cd projects
if [[ -d "Samantha" && ! -L "Samantha" ]]; then
  for d in ./*/ ; do (cd "$d" && printf "OLLA"); done
else
  printf 'we are all fucked!'
fi
