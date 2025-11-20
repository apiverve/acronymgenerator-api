from setuptools import setup, find_packages

setup(
    name='apiverve_acronymgenerator',
    version='1.1.9',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Acronym Generator is an AI-powered tool for creating creative acronyms from text. It returns 3 unique acronym suggestions for any given phrase.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
