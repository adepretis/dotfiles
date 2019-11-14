is_osx || return 0

return 0

(
	# Casks to install
	casks=(
		dropbox
		evernote
		flux
		flycut
		iterm2
		macdown # Markdown Editor
		skype
		spotify
		teamviewer
		vlc
	)

	# Install the casks
	for package in ${casks[@]} ; do
		brew cask ls $package > /dev/null 2>&1 || brew cask install $package
	done

	# Cleanup after install
	brew cask cleanup > /dev/null
)
