# install global python plugins
if command -v "pip3" > /dev/null; then
	pip3 install virtualenv flake8 cssmin powerline-status
else
	echo "python is required.";
fi
