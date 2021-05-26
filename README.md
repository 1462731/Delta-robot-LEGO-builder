# Delta robot LEGO builder
<img src="https://github.com/1462731/Delta-robot-LEGO-builder/blob/main/Models/High%20Res%20Model/Renders/RenderHome.png?raw=true" align="center" width="600" alt="header pic"/>

A Delta Robot with multiple functionalities across three different workspaces

# Table of Contents
  * [What is this?](#what-is-this)
  * [Requirements](#requirements)
  * [Documentation](#documentation)
  * [How to use](#how-to-use)
  * [LEGO figure detection](#LEGO-figure-detection)
  * [3D Object reconstruction](#3d-object-reconstruction)
  * [Building](#building)
  * [Hardware Scheme](#Hardware-scheme)


# What is this?

This is the final project for the Robotics,Language and Plannig (RLP) class of Universitat Autonoma de Barcelona.

Our project consists of a delta robot mounted on a rail and equipped with a Gripper and a Camera sensor. Utilizing these, the robot is capable of detecting and sorting LEGO bricks, recognizing 3D shapes, and recreating said shapes out of the LEGO bricks it sorts.



# Requirements
For the simulation:
- CoppeliaSim

For running the simulation code:
- Python 3.9.x
- sim.py
- simConst.py
- remoteApi.dlll
- numpy
- simpy
- math
- cv2

For running the 3D reconstruction code:
- Matlab

# Documentation

This README is only a brief summary of the functionalities, for more information on the implementation you can check out our project report at [insert link here]
All the demo clips are watchable on youtube [here](https://www.youtube.com/watch?v=3omnnSd8MN4)

# How to use

1. Clone this repo.
2. Install the required libraries
3. Open the CoppeliaSim Simulation module you want
4. Open the corresponding jupyter notebook file
5. Start the simulation
6. Execute the jupyter notebook

# LEGO figure detection
In this module the robot rotates the camera around the objects in order to extract the images needed for the Space Carving algorithm.

# 3D Object reconstruction
This module simulates the execution loop of the sorting stage of the robot. In it, the robot takes a picture of the initial state of the scattered bricks in the workspace. The camera output is then passed to the jupyter notebook code where it detects the positions and orientations of all lego pieces, which it uses to plan and then execute a sorting routine where it places all bricks on different columns depending on type. 

# Building

This final module simulates the state in which the robot has already scanned the object into a 3D stl and sorted the pieces it needs for the build. The robot uses these to build the equivalent object in LEGO bricks given the shapes available.

# Hardware Scheme
<img src="https://github.com/1462731/Delta-robot-LEGO-builder/blob/main/HardwareSchematics/LEGObuilderHardware.png" align="center" width="600" alt="header pic"/>


