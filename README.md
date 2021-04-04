# About this image

Docker image for [DocFX](http://dotnet.github.io/docfx/).

# Spec

| Product | Version |
|---------|---------|
| DocFX   | 2.56.7  |

# How to use

- for build docfx-project

```sh
cd <docfx_project_dir>
docfx build
```

- for serve

```
cd <docfx_project_dir>
docfx docfx.json --serve
```

# Memo

```
$ docker run --rm -it tsgkadot/docker-docfx:latest docfx help
```

```
docfx 2.56.7.0
Copyright (C) 2021 ? Microsoft Corporation. All rights reserved.
This is open-source software under MIT License.
   Usage1: docfx <docfx.json file path> [-o <output folder path>]
   Usage2: docfx <subcommand> [<args>]


See 'docfx help <command> to read about a specific subcommand guide

    build           : Generate client-only website combining API in YAML files and conceptual files
    dependency      : Export dependency file
    download        : Download remote xref map file and create an xref archive in local.
    help            : Get an overall guide for the command and sub-commands
    init            : Generate an initial docfx.json following the instructions
    merge           : Merge .net base API in YAML files and toc files.
    metadata        : Generate YAML files from source code
    pdf             : Generate pdf file
    serve           : Host a local static website
    template        : List or export existing template
```
