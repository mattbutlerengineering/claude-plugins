# Claude Plugins

A collection of custom plugins for Claude Code.

## About Claude Plugins

Claude Code supports custom plugins (called "skills") that extend its functionality. Skills are shell scripts that can be invoked during conversations to perform specialized tasks.

## Structure

```
claude-plugins/
├── plugins/          # Your custom plugins go here
└── README.md         # This file
```

## Getting Started

To create a new plugin:

1. Create a new directory in `plugins/` with your plugin name
2. Add your plugin implementation files
3. Follow the Claude Code skills documentation for the plugin format

## Available Plugins

- `example-plugin/` - A sample plugin to demonstrate the basic structure

## Resources

- [Claude Code Documentation](https://github.com/anthropics/claude-code)
- [Claude Agent SDK](https://github.com/anthropics/anthropic-sdk-typescript)

## License

MIT
