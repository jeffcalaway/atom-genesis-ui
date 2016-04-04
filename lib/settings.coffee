module.exports =
    config:
        distractionFree:
            type: 'object'
            properties:
                hideFiles:
                    title: 'Tree View'
                    description: 'Reduces the opacity of collapsed folders and files'
                    type: 'boolean'
                    default: true
                hideTabs:
                    title: 'Tabs'
                    description: 'Reduces the opacity of idle tabs'
                    type: 'boolean'
                    default: true
                hideBottom:
                    title: 'Status Bar'
                    description: 'Reduces the opacity of idle status bar'
                    type: 'boolean'
                    default: true
                hideSpotified:
                    title: 'Spotified Package'
                    description: 'Reduces the opacity of Spotified package'
                    type: 'boolean'
                    default: false

    activate: (state) ->
        atom.themes.onDidChangeActiveThemes ->
            Config = require './config'
            Config.apply()