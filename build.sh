rm requirements.txt
pipreqs . --force
rm -r build
rm -r dist
rm -r .tox
rm -r setup.py sdist bdist_wheel
rm -r ./*.egg-info
rm -r ./*.egg
twine check dist/*
twine upload --repository testpypi dist/*
twine upload --repository pypi dist/*