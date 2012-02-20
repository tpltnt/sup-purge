# About
This is a small Ruby-script to purge emails from sup.
Yes, purging means physically deleting them from your
maildir. This will most likely break your (xapian)
search index.

## Why?
To quote the FAQ:

>Q: How do I delete a message?
>
>A: Why delete? Unless it's spam, you might as well just archive it.
>
>Q: C'mon, really now!
>
>A: Ok, press the 'd' key.
>
>Q: But I want to delete it for real, not just add a 'deleted' flag in
>   the index. I want it gone from disk!
>
>A: Currently, for mbox sources, there is a batch deletion tool that
>   will strip out all messages marked as spam or deleted.

There are people who use maildir. Although harddrives are cheap,
cruft does not have to be tolerated.

## Hints
* To back up your index run: 
```sup-dump > <dumpfile>```
   The dumpfile is plain text and can be compressed easily.
* To restore your index run:
```
rm -rf ~/.sup/xapian;
sup-sync --all-sources --all --restore <dumpfile>
```


# References
* [sup homepage](http://sup.rubyforge.org/)
* [development repository](http://gitorious.org/projects/sup)
* [sup FAQ](http://sup.rubyforge.org/FAQ.txt)
* [sup wiki](http://sup.rubyforge.org/wiki/wiki.pl)
* [Xapian](http://xapian.org/)