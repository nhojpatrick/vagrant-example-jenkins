#!/bin/sh

git checkout main     && git pull            && git push -f && \
git checkout v2.176.x && git rebase main     && git push -f && \
git checkout v2.190.x && git rebase v2.176.x && git push -f && \
git checkout v2.204.x && git rebase v2.190.x && git push -f && \
git checkout v2.222.x && git rebase v2.204.x && git push -f && \
git checkout v2.235.x && git rebase v2.222.x && git push -f && \
git checkout v2.249.x && git rebase v2.235.x && git push -f && \
git checkout v2.263.x && git rebase v2.249.x && git push -f && \
git checkout v2.x     && git rebase v2.263.x && git push -f && \
git checkout v2.263.x ;

