# fishtools

[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

my small tools on fish

## Install

With [fisherman]

```
fisher matsub/fishtools
dict -init
```

## Requirements
- [ghq](https://github.com/motemen/ghq)
- [fzf](https://github.com/junegunn/fzf)

## Functions

- `dev`
    cd to a repository registered in ghq
- `dict`
    translate English and Japanese

```sh
$ dict [-I|--install] # initialize dictionary
$ dict absolutely
absolutely ->  『絶対的に』,完全に / 無条件に,断然 / 《話》(返事や合いの手として)そのとおり,まったく
$ dict 絶対的
絶対的 [ぜったいてき]  -> (adj-na) absolute, (P),
```

[travis-link]: https://travis-ci.org/matsub/fishtools
[travis-badge]: https://img.shields.io/travis/matsub/fishtools.svg
[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
