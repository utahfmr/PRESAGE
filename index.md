
## Introduction
PRESAGE is an open-source tool which is aimed at protecting structured address computations against soft errors. It is developed using [LLVM compiler infrastructure](http://llvm.org/). PRESAGE applies 
a novel rewriting scheme, dubbed Relative Base Addressing (RBA) scheme, which introduces dependency chains between same-base-address-sharing GetElementPtr instructions at LLVM intermediate representation (IR) level. Currently, PRESAGE is extensively tested on C benchmarks drawn from [Polybench/C benchmark suite](http://web.cs.ucla.edu/~pouchet/software/polybench/). However, it should work for any high-level language which can be compiled to LLVM IR. 

## People 
### Faculty & Collaborators
* [Ganesh Gopalakrishnan](http://www.cs.utah.edu/~ganesh/)
* [Sriram Krishnamoorthy](http://hpc.pnl.gov/people/sriram/)

### Developers
* [Vishal Sharma](https://sites.google.com/site/vishalutah/home)

### PRESAGE Demo
* [Visualizing the effect of the PRESAGE transformation.](http://formalverification.cs.utah.edu/fmr/presage/presage_viz.html)

## Cite our work
When you use PRESAGE in your research work, please cite our work using below citation information. The paper could be found [here.](http://arxiv.org/abs/1606.08948)

```
@inproceedings{DBLP:conf/hipc/SharmaGK16,
  author    = {Vishal Chandra Sharma and
               Ganesh Gopalakrishnan and
               Sriram Krishnamoorthy},
  title     = {PRESAGE: Protecting Structured Address Generation against Soft Errors},
  booktitle = {23rd {IEEE} International Conference on High Performance Computing,
               HiPC 2016, Hyderabad, India, December 19-22, 2016},
  pages     = {252--261},
  year      = {2016},
  crossref  = {DBLP:conf/hipc/2016},
  url       = {https://doi.org/10.1109/HiPC.2016.037},
  doi       = {10.1109/HiPC.2016.037},
  timestamp = {Fri, 26 May 2017 00:49:00 +0200},
  biburl    = {https://dblp.org/rec/bib/conf/hipc/SharmaGK16},
  bibsource = {dblp computer science bibliography, https://dblp.org}
}

```

## Getting Started with PRESAGE
Refer to the PRESAGE's [README file](https://github.com/utahfmr/PRESAGE) for getting started.

