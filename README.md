# Code Climate Prototool Lint Engine

[![Build Status][badge]][workflow]

[badge]: https://github.com/esilkensen/codeclimate-prototool-lint/workflows/build/badge.svg
[workflow]: https://github.com/esilkensen/codeclimate-prototool-lint/actions?query=workflow%3Abuild

`codeclimate-prototool-lint` is a Code Climate engine that wraps
[prototool lint](https://github.com/uber/prototool#prototool-lint). You can run it on your command line using the Code
Climate CLI, or on the hosted analysis platform.

This engine uses the latest [`uber/prototool` Docker image](https://hub.docker.com/r/uber/prototool) which is built with
a particular version of `protoc`. As a result, the Prototool `protoc.version` configuration option is ignored.

### Installation

1. If you haven't already, [install the Code Climate CLI](https://github.com/codeclimate/codeclimate).
2. Add the following to yout Code Climate config:

```yaml
engines:
  prototool-lint:
    enabled: true
```

3. Run `codeclimate engines:install`
4. You're ready to analyze! Browse into your project's folder and run `codeclimate analyze`.

### Need help?

For help with Prototool Lint, [check out their documentation](https://github.com/uber/prototool/blob/dev/docs/lint.md).

If you're running into a Code Climate issue, first look over this project's
[GitHub Issues](https://github.com/esilkensen/codeclimate-prototool-lint/issues), as your question may have already been
covered. If not, [go ahead and open a support ticket with Code Climate](https://codeclimate.com/help).
