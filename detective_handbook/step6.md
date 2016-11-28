# `grep` with context

`grep -A N SEARCH_STRING` outputs not only the line that contains a match but also N lines after that one.

`grep -B N SEARCH_STRING` is like `-A` but prints out N lines before the line with the match.

`grep -C N SEARCH_STRING` outputs N lines before and after the match string.

Use `man grep` to learn more about `grep` flags.

# Making a pull request on Github

You forked a repo, cloned it to your computer, made some changes committed and pushed them back to Github. Now if you want to submit those changes back to the original repo you would need to make a Pull Request. The maintainers of the original repo can review your changes and decide if they want to merge them.

Refer to the [Github guide](https://help.github.com/articles/creating-a-pull-request/) to learn how to make a pull request.
