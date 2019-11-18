# Bundler-audit-docker

This is a little docker container to check a `Gemfile.lock` for vulnerabilities.

The container image is updated often to use the latest versions of bundler, bundler-audit and ruby-advisory-db. The ruby-advisory-db is added to the container image at build time, so the container can perform a scan with a recent db without internet connectivity.

Primary packages
- [Bundler](https://github.com/bundler/bundler)
- [Bundler-audit](https://github.com/rubysec/bundler-audit) 
- [ruby-advisory-db](https://github.com/rubysec/ruby-advisory-db)

## Installation

Pull the container image from docker hub

`sdbrett/bundler-audit:latest`

## Usage

After downloading the container image you can run it by using the `docker run` command. You will need to specify the location where the `Gemfile.lock` is stored as a volume and mount it to /tmp. 

**Running from the directory where the `Gemfile.lock` is located.**
`docker run --rm -v $(pwd):/tmp sdbrett/bundler-audit`

**Running from outside the directory where the `Gemfile.lock` is located.**
`docker run --rm -v /home/user/project:/tmp sdbrett/bundler-audit`

