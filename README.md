# Haskell hugs98 docker image based on Debian Jessie.

Built to use with the DelftX: FP101x Introduction to Functional Programming course at edX.

https://www.edx.org/course/introduction-functional-programming-delftx-fp101x-0

## Repos

Docker Hub: https://hub.docker.com/r/sdthirlwall/hugs

GitHub: https://github.com/sdt/docker-hugs

Issues: https://github.com/sdt/docker-hugs/issues

## Installation

`docker pull sdthirlwall/hugs`

## Usage

You can run hugs from docker directly with:

`docker run --rm -ti -v "$PWD":/hugs sdthirlwall/hugs [args...]`

Or grab the [hugs launcher script](https://github.com/sdt/docker-hugs/blob/master/hugs) from the github repo and then use **hugs** as if it was a native command.

eg
`hugs myfile.hs`

The current working directory gets mounted inside the container, so you can edit the code in your favourite editor, and `:reload` from within hugs.
