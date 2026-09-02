# Rust project template

A minimal Rust workspace with an application crate, a library crate, strict
quality checks, and GitHub Actions CI.

## Create a project with cargo-generate

Install the generator once:

```sh
cargo install cargo-generate --locked
```

Create a project from this repository:

```sh
cargo generate kleczkowski/rust-template
```

The generator asks for the project name, a GitHub username, and a description.
Then create an empty GitHub repository and publish it:

```sh
cd <project-name>
git remote add origin git@github.com:<github-username>/<project-name>.git
git push -u origin main
```

## Create a project on GitHub

Mark this repository as a GitHub template repository, then use **Use this
template**. Before the first pull request, replace `template-owner`,
`template-project`, `template-app`, and `template-library` with the new project
details in the manifests, README, and `.github/CODEOWNERS`.

## Local development

Install the project tools and run all checks:

```sh
make install-tools
make check
```

`make help` lists the individual formatting, linting, build, test, and
doc-test commands.
