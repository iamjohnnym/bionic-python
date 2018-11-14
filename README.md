[![Build Status](https://travis-ci.com/iamjohnnym/bionic-python.svg?branch=master)](https://travis-ci.com/iamjohnnym/bionic-python)
# Bionic-Python
[![forthebadge](https://forthebadge.com/images/badges/uses-badges.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](https://forthebadge.com)

*Bionic-Python* is a multi-stage Docker image that packages `Ubuntu 18.04 (Bionic Beaver)` and some form of `Python['2.7','3.6','3.7']` together.  On a successful build step, `TravisCI` will push the images to DockerHub with the appropriate tags.

Ideally, the `base` should always remain the same no matter the version of Python running.  As such, no special steps are required to gain compatability between versions.

# Table of contents

- [Bionic-Python](#bionic-python)
- [Table of contents](#table-of-contents)
- [Getting Started](#getting-started)
- [Features](#features)
- [Usage](#usage)
    - [Build Locally](#build-locally)
    - [From DockerHub](#from-dockerhub)
- [Authors](#authors)
    - [Contributing](#contributing)
- [License](#license)
- [Versioning](#versioning)

# Getting Started

To get started with your own.  Simply fork this repo, add the repo to your [Travis](https://travis-ci.com/) account, update the `secure` secrets via [TravisCLI](https://docs.travis-ci.com/user/encryption-keys/), and push your changes to your master branch.

# Features

This project makes use of the following services:

* Git
* TravisCI
* DockerHub
* Docker

# Usage

[(Back to top)](#table-of-contents)

Current valid tags:

* `iamjohnnym/bionic-python:2.7`
* `iamjohnnym/bionic-python:3.6`
* `iamjohnnym/bionic-python:3.7`

## Build Locally

If you would like to build the image locally, you can do so with the following steps.

```bash
git clone https://github.com/iamjohnnym/bionic-python.git
cd bionic-python
PY_VERSION=3.7
docker build --build-arg PYTHON_VERSION=${PY_VERSION} -t localhost/bionic-python:${PY_VERSION} .
```

## From DockerHub

```
PY_VERSION=3.7
docker pull iamjohnnym/bionic-python:${PY_VERSION}
```

# Authors
[(Back to top)](#table-of-contents)

* **Johnny Martin** - *Initial work* - [iamjohnnym](https://github.com/iamjohnnym)

See also the list of [contributors](https://github.com/iamjohnnym/bionic-python/contributors) who participated in this project.

## Contributing

[(Back to top)](#table-of-contents)

Your contributions are always welcome! Please have a look at the [contribution guidelines](.github/CONTRIBUTING.md) first.

# License

[(Back to top)](#table-of-contents)

Apache License, Version 2.0 2018 - [Johnny Martin](https://github.com/iamjohnnym/). Please have a look at the [LICENSE.md](LICENSE.md) for more details.

# Versioning
[(Back to top)](#table-of-contents)

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/iamjohnnym/bionic-python/tags).
