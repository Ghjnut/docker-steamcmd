# docker-steamcmd
Used to make a steamcmd docker executable container. Uses ubuntu:15.10 as base.

## TODO
- cleanup bash scripts
- update template `.env` file

## Usage
1. `bin/build` to create the container
2. (optional) set env vars in `bin/build_auth` and execute to generate 
`steamcmd:auth` (needs manual interaction to enter steamguard key)
