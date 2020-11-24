#!/bin/sh

git checkout v2.204.x && git rebase main     && git push -f && \
git checkout v2.222.x && git rebase v2.204.x && git push -f && \
git checkout v2.235.x && git rebase v2.222.x && git push -f && \
git checkout v2.249.x && git rebase v2.235.x && git push -f && \
git checkout v2.263.x && git rebase v2.249.x && git push -f && \
git checkout v2.x     && git rebase v2.263.x && git push -f
