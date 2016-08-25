is_osx || return 0

(
	# Casks to install
	casks=(
		1password
		android-studio
		dropbox
		evernote
		flux
		flycut
		intellij-idea
		intel-haxm
		iterm2
		java
		mou # Markdown Editor
		phpstorm
		qlcolorcode
		qlimagesize
		qlmarkdown
		qlprettypatch
		quicklook-csv
		quicklook-json
		skype
		spotify
		teamviewer
		vagrant
		vlc
	)

	# Install the casks
	for package in ${casks[@]} ; do
		brew cask ls $package > /dev/null 2>&1 || brew cask install $package
	done

	# Cleanup after install
	brew cask cleanup > /dev/null
)
