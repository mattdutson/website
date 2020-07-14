---
title: Portfolio
layout: default
---

# Portfolio

This page contains some discussion of my past work along with links to source code and results. I have chosen not to discuss the proprietary work I've done during internships, although highlights can be found on [my resume](/assets/resume.pdf).

## Neural Style Transfer

[Source code](https://github.com/mattdutson/style-transfer)

This is a personal side project I recently picked up. Neural style transfer extracts the style from one image (say, a Van Gogh painting) and applies it to another image (typically a photograph). The transfer is "neural" because a pre-trained neural network is used to understand the style and content of the two images.

My implementation is mostly based on [A Neural Algorithm of Artistic Style](https://arxiv.org/abs/1508.06576) (Gatys et al. 2015). The L-BFGS optimizer is used to minimize a loss function comprised of a style term, a content term, and an anti-noise term.

Here's an example. On the left is a photo I took of a bristlecone pine in Great Basin National Park. The right image reexpresses that image in the style of [The Scream](https://en.wikipedia.org/wiki/The_Scream) by Edvard Munch.

![style sample](/assets/style_sample.jpg)

## Post-Disaster Building Damage Detection

[Source code](https://github.com/mattdutson/xview2)

Mehmet Demirel, Shri Shridhar, and I participated in the 2019 [xView2 competition](https://xview2.org/) for a computer vision class project. The task was, given pre and post-disaster satellite images of some region, to localize buildings and estimate the damage they sustained during the disaster.

We trained a custom [U-Net](https://arxiv.org/abs/1505.04597) (Ronneberger et al. 2015) using a class-weighted loss. Our model performed competitively, spending a couple of weeks on the competition leaderboard. The details of our approach and results can be found in [this report](/assets/xview2_report.pdf).

Here's an example of a pre/post-disaster image pair.

![pre post sample](/assets/pre_post_sample.png)

These next images show the correct (left) and our model's predicted (right) building damage masks. The color scale ranges from green (no damage) to red (destroyed).

![true pred sample](/assets/true_pred_sample.png)

## Biological Fiber Image Generation

[Source code](https://github.com/uw-loci/syntheticfibergenerator)

This project was the result of my research during the 2018-2019 academic year while working under Kevin Eliceiri at LOCI (Laboratory for Optical and Computational Instrumentation).

CT-FIRE and CurveAlign were developed by LOCI to analyze images of collagen fibers in human tissue. The alignment and orientation of these fibers can be a prognostic signature for certain cancers. My software allows the user to generate synthetic images of collagen fibers with specific, known properties. These images can be used to verify the accuracy and test the limitations of CT-FIRE and CurveAlign.

The core technical challenge in fiber generation is constructing a random path given a fixed length and fixed endpoint positions. I experimented with two approaches:

 * A geometric algorithm which recursively "bridges" the endpoints subject to path length constraints. This is the approach currently used by the synthetic fiber generator.
 * A more mathematically rigorous algorithm which samples uniformly from the set of n-step fixed-endpoint random walks.

Here's a generated image with mostly straight fibers, but low alignment between fibers.

![straight fibers](/assets/straight_fibers.png)

This one has curly, aligned fibers.

![curly fibers](/assets/curly_fibers.png)
