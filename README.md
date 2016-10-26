commandlog
==========

A small set of tools for logging and annotating command-line history in a
Linux or Unixlike environment.  Requires Perl, sqlite, and zsh.  (It
probably won't take much to add to Bash, but I haven't tried yet.)

So far, this is about an hour's worth of messing around one evening.  It
doesn't do much.  Here's what I know works:

```sh
git clone git@github.com:brennen/commandlog
cd commandlog
perl Build.PL
sudo ./Build install
```

Next, put the following in your `.zshrc`:

```zsh
function preexec {
  commandlog add "$@"
}
```

Or, if using Oh-My-Zsh:

```zsh
function commandlog_preexec {
  commandlog add "$@"
}
add-zsh-hook preexec commandlog_preexec
```

Now, with any luck, you can use:

```sh
commandlog log
```

And you should get output something like the following:

                  id = 96
             command = commandlog log
    expanded_command = commandlog log
                path = /home/brennen/code/commandlog
            hostname = exuberance
            username = brennen
               shell = /usr/bin/zsh
            terminal = xterm
               notes = 
            datetime = 2016-10-26 03:56:12

                  id = 95
             command = vim README.md
    expanded_command = vim README.md
                path = /home/brennen/code/commandlog
            hostname = exuberance
            username = brennen
               shell = /usr/bin/zsh
            terminal = xterm
               notes = 
            datetime = 2016-10-26 03:48:40

                  id = 94
             command = ll
    expanded_command = ls --color -l
                path = /home/brennen/code/commandlog
            hostname = exuberance
            username = brennen
               shell = /usr/bin/zsh
            terminal = xterm
               notes = 
            datetime = 2016-10-26 03:48:30

No promises though.  If anybody tries this and has thoughts, please do let me
know.
