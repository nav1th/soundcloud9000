# soundcloud9000

The next generation SoundCloud client. Without all these stupid CSS files. Runs on OSX and Linux.

![Screen Shot 2019-04-28 at 20 42 40](https://user-images.githubusercontent.com/31281983/56872460-74dd2780-69f7-11e9-9d7e-247757a9a6fd.png)

![Screen Shot 2013-01-20 at 15 37 54](https://f.cloud.github.com/assets/3432/81281/06b05df4-630f-11e2-8b55-7f3c18126831.png)

This hack was originally built at the [Music Hack Day Stockholm 2013](http://stockholm.musichackday.org/2013).

## Requirements

- Ruby (1.9)
- Portaudio (19)
- Mpg123 (1.14)

## Installation

Assuming you have Ruby/Rubygems installed, you need portaudio and mpg123 as
library to compile the native extensions.

### OSX

```bash
xcode-select --install
brew install portaudio
brew install mpg123
gem install soundcloud9000
```

If you ever encounter a problem with `audite` being `require`d, run:

```bash
gem uninstall audite
gem install --user audite -- --with-ldflags="-lmpg123"
```

See [this comment](https://github.com/grobie/soundcloud2000/issues/96#issuecomment-341915328) for more information.

### Debian / Ubuntu

```bash
apt-get install portaudio19-dev libmpg123-dev libncurses-dev ruby1.9.1-dev
gem install soundcloud9000
```

## Usage

In order to use soundcloud9000, you need to [acquire a client credential for your application](https://stackoverflow.com/a/43962626/7127932). soundcloud9000 expects a valid client id to be set in the `SC_CLIENT_ID` environment variable.

You can either set this up in your `.bashrc` or equivalent or you can specify it on the command line:

```bash
SC_CLIENT_ID=YOUR_CLIENT_ID soundcloud9000
```

## Features

- stream SoundCloud tracks in your terminal (`enter`)
- scroll through sound lists (`down` / `up`)
- play / pause support (`space`)
- forward / rewind support (`right` / `left`)
- play tracks of different users (`u`)
- play favorites from a user (`f`)
- play sets/playlists from a user (`s`)
- level meter
- shuffle (`m`)

## Planned

- play any streams, sets or sounds
- better browsing between users and sound lists
- live lyrics (don't get your hopes up for this one)

## Authors

- [Matthias Georgi](https://github.com/georgi) ([@mgeorgi](https://twitter.com/mgeorgi))
- [Tobias Schmidt](https://github.com/grobie) ([@dagrobie](https://twitter.com/dagrobie))

## Contributors

- [Travis Thieman](https://github.com/tthieman) ([@tthieman](https://twitter.com/thieman))
- [Sean Lewis](https://github.com/sophisticasean) ([@FricSean](https://twitter.com/fricsean))

## Current Maintainer

- [Sumanth Ratna](https://github.com/sumanthratna) ([@sumanthratna](https://twitter.com/sumanthratna))
