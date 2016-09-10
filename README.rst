Some scripts I'm regularly sharing via IRC or email.
This primarily exists for those to check for and get updates easily.

bin/
    contains scripts, they're mostly written in posix-compliant
    shellscript

fpath/
    contains completions for zsh

Each file contains a header in the following form:

    $description

    Changelog:
        $(date +%Y-%m-%d)	$change_description

    $copyright_and_license

This layout enables updating without explicitly cloning/pulling from
git, while still being able to get an overview of the updates.

If you neither want to use a cronjob to grab updates of the scripts nor
like submodules have a look at myrepos [#myrepos]_.

.. [#myrepos] https://myrepos.branchable.com/
