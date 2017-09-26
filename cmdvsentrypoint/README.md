Syntax warning
==============

```
CMD /bin/echo
# or
CMD ["/bin/echo"]
```

The first one prepends "/bin/sh -c", while the second one does not! 

Ex:

$ ping -c3 localhost
$ /bin/sh -c "ping -c3 localhost"

Show exit codes! (with or without CMD entry)
