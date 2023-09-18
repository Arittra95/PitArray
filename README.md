# PitArray (ParkInson's disease detection Tool using blood-based microArray data)

![200x200](https://github.com/Arittra95/PitArray/assets/57245109/6dffc375-7fc5-4a4a-8fd2-5197e4444626)

A Parkinson's Disease detection tool

## Introduction
Welcome to ParkInson's disease detection Tool using blood-based microArray data (PitArray), a convenient tool for the non-invasive diagnosis of Parkinson's Disease. PitArray has been developed using blood-based microarray data. It has been trained on Affymetrix-based gene expressions only. PitArray can classify the disease from Robust Multi-array Average (RMA) normalized inputs (as .csv file) from R package [affy](https://bioconductor.org/packages/release/bioc/html/affy.html).

## Usage
You can use PitArray by [Google Colab](https://colab.research.google.com/github/Arittra95/PitArray/blob/main/PitArray_01.ipynb).

## Download the model:

To run PitArray on your local computer, you can download the whole repository using the git command:

```bash

cd /path/to/your/desired/directory
git clone https://github.com/Arittra95/PitArray.git

```

## Dependencies

You will need the following Python libraries installed:

- [NumPy](https://numpy.org/) (version 1.23.5)
- [Pandas](https://pandas.pydata.org/) (version 1.5.3)
- [Scikit-learn](https://scikit-learn.org/stable/) (version 1.2.2)
- [Matplotlib](https://matplotlib.org/) (version 3.7.1)
- [Seaborn](https://seaborn.pydata.org/) (version 0.12.2)
- [Time](https://docs.python.org/3/library/time.html) (version 1.23.5)
- [Joblib](https://joblib.readthedocs.io/en/latest/) (version 1.3.2)

### Installation of dependencies using pip

You can install these dependencies using pip:

```bash
pip install numpy==1.23.5 pandas==1.5.3 scikit-learn==1.2.2 matplotlib==3.7.1 seaborn==0.12.2 time==1.23.5 joblib==1.3.2

 ```
### Installation of dependencies using Conda

#### Install Conda:

If you have not already installed Conda, you can download and install Miniconda (a minimal Conda installer) from the official website: https://docs.conda.io/en/latest/miniconda.html

#### Create the "pitarray" Environment:

Open your terminal or command prompt and run the following command to create a Conda environment named "pitarray" with the required dependencies:

```bash
conda create -n pitarray python=3.10.12 numpy=1.23.5 pandas=1.5.3 scikit-learn=1.2.2 matplotlib=3.7.1 seaborn=0.12.2 joblib=1.3.2
```
This command will create a new environment with the specified library versions.

#### Activate the "pitarray" Environment:

To activate the "pitarray" environment, use the following command:
```bash
conda activate pitarray
```
#### Install Additional Packages:

If your project requires additional Conda packages not covered by the library versions mentioned earlier, you can install them within the "pitarray" environment using conda install.

#### Run Your Project:

Once the environment is activated, navigate to your project directory and execute your PitArray project as you normally would.

#### Deactivate the Environment:

When you are done working on your project, you can deactivate the "pitarray" environment using the following command:

```bash
conda deactivate
```
### Applications

Use PitArray for research purposes only. 

### How to Contribute? 
If you want to contribute to this project for further development please contact: bioinformatics.division.nib.gov.bd@gmail.com 
or visit the official website of the National Institute of Biotechnology, Dhaka, Bangladesh (http://www.nib.gov.bd/).  
