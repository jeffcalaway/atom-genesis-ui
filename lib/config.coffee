###≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡

	CONFIG DIRECTORY

	_Variables
	_DistractionFree

# ≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡###

module.exports =
	apply: ->

#▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤#
#   _Variables
#▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤#

		root = document.documentElement
		# tree = document.getElementsByClassName("tree-view")[0]
		# tabs = document.getElementsByClassName("tab-bar")[0]
		# bottom = document.getElementsByClassName("status-bar")[0]



#▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤#
#   _DistractionFree
#▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤▤#

		# Tree View
		hideInactiveFiles = (boolean) ->
			if boolean
				root.classList.add('hide-tree-items')
			else
				root.classList.remove('hide-tree-items')

		atom.config.onDidChange 'genesis-ui.distractionFree.hideFiles', ->
			hideInactiveFiles(atom.config.get('genesis-ui.distractionFree.hideFiles'))

		hideInactiveFiles(atom.config.get('genesis-ui.distractionFree.hideFiles'))

		# Tabs
		hideIdleTabs = (boolean) ->
			if boolean
				root.classList.add('hide-idle-tabs')
			else
				root.classList.remove('hide-idle-tabs')

		atom.config.onDidChange 'genesis-ui.distractionFree.hideTabs', ->
			hideIdleTabs(atom.config.get('genesis-ui.distractionFree.hideTabs'))

		hideIdleTabs(atom.config.get('genesis-ui.distractionFree.hideTabs'))

		# Status Bar
		hideIdleStatus = (boolean) ->
			if boolean
				root.classList.add('hide-status-bar')
			else
				root.classList.remove('hide-status-bar')

		atom.config.onDidChange 'genesis-ui.distractionFree.hideBottom', ->
			hideIdleStatus(atom.config.get('genesis-ui.distractionFree.hideBottom'))

		hideIdleStatus(atom.config.get('genesis-ui.distractionFree.hideBottom'))

		# Spotified
		hideSpotifiedPackage = (boolean) ->
			if boolean
				root.classList.add('hide-spotified')
			else
				root.classList.remove('hide-spotified')

		atom.config.onDidChange 'genesis-ui.distractionFree.hideSpotified', ->
			hideSpotifiedPackage(atom.config.get('genesis-ui.distractionFree.hideSpotified'))

		hideSpotifiedPackage(atom.config.get('genesis-ui.distractionFree.hideSpotified'))

		# TreeView Hover
		toggleItemHoverEffect = (boolean) ->
			if boolean
				root.classList.add('add-tree-item-hover')
			else
				root.classList.remove('add-tree-item-hover')

		atom.config.onDidChange 'genesis-ui.treeView.toggleHovers', ->
			toggleItemHoverEffect(atom.config.get('genesis-ui.treeView.toggleHovers'))

		toggleItemHoverEffect(atom.config.get('genesis-ui.treeView.toggleHovers'))