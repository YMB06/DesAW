@echo off
kubectl exec -it %1 -n %2 -- /bin/sh