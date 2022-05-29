package_create
==============================

This is just an illustration how to make a opensource package using cookiecutter and pypi 

Create Conda environment
`conda create -n venv`

-->`cookiecutter` offical documentation http://drivendata.github.io/cookiecutter-data-science/ 

-->Now  fire up terminal and paste this `cookiecutter https://github.com/drivendata/cookiecutter-data-science`

-->After that You get this type of template tree 

-->Now you can start data science project using this template 

-->demo link : https://github.com/rohanpatankar926/Consignment-Pricing-Using-Mlops-DVC

-->Project Organization
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.readthedocs.io


--------

<p><small>-->Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>

-->After creating end to end data science project now we need to publish a package so that everyone in the world can install and reuse our package..

-->create and run `build.sh` file which looks like this 

```
rm requirements.txt
pipreqs . --force
rm -r build
rm -r dist
rm -r .tox
rm -r setup.py sdist bdist_wheel
rm -r ./*.egg-info
rm -r ./*.egg
pip install twine
twine check dist/*
twine upload --repository testpypi dist/*
twine upload --repository pypi dist/*
```

```
Publish to PyPl
What's PyPI?
Python Package Index - official central repository for python package
Enables developers to find, publish and install a python package
o pip (python package manager) uses PyPI to retrieve dependencies
Steps to Publish
oStep 1: Ensure that pip is installed
oStep 2: Package the Python code
o Step 3: Create the source distribution of the package
Step 4: Install twine
Step 5: Create a PyPl Account
Step 6: Upload the source distribution on PyPI
Step 7: Check the lotest package updated on PyPI
Step 8:Install the published package with pip
```
