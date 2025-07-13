## ROSAME
ROSAME (neuRO-Symbolic Action Model lEarner) is a differentiable neuro-symbolic framework for learning lifted action models from visual traces. This repository contains a modified implementation of the original ROSAME algorithm introduced in the ICAPS 2024 paper by Xi, Gould, and Thiébaux.

## 🔍 Overview
The original ROSAME framework combines:

- Deep learning for visual state prediction from image traces.
- Symbolic reasoning to infer lifted STRIPS-like action models.
- End-to-end differentiability, enabling joint optimization of perception and symbolic model learning.
- This repository builds upon that foundation with several modifications and enhancements:
  - New evaluation metrics for model quality and generalization.
  - Additional experiments on custom datasets and ablation studies.
  -  Numeric Learning Support:
    - Preliminary integration of numeric fluents into the learning process.
    - Enables ROSAME to operate in domains with continuous effects or numeric preconditions.
## 🔧 Key Features

- **Algorithm Adaptation & Extension:**  
  Adapted version of ROSAME with modifications including enhanced state encoding and extended visualization and logging capabilities.

- **Complete Experimental Pipeline:**  
  - **Problem Generator:**  
    Parses PDDL domain and problem files to extract types, predicates, propositions, and an action order dictionary.  
    Two modes are available:
    - Using a custom generator function.
    - Using grounded predicates with `Predicate.ground()` (specific to ROSAME).
  
  - **Trace Generator:**  
    Generates trajectories (state-action traces) from the domain and problem files.
  
  - **Learning Phase:**  
    The ROSAME algorithm processes the generated trajectories:
    - **Trajectory Grounding:** Prepares raw data using `ground_new_trajectory()`.
    - **Model Learning:** Updates the model using `learn_rosame()`, typically over 100–200 epochs.
      
## 🧪 ROSAME Experiment Runner
The ROSAME experimental pipeline is designed to support a full workflow from problem generation to model evaluation. Here’s an overview of its components:

- **Pipeline Overview**
  - **Problem Generator**
    Inputs:
      PDDL domain file (providing types and predicates).
      PDDL problem file (providing current objects).
    Outputs:
      Problem description, propositions, and action order dictionary.

  - **Trace Generator**

    Inputs:
      The parsed domain and problem.
    Outputs:
      Trajectory traces that document state transitions.

  - **Algorithm (ROSAME)**
      **Process:**
        1. Receives domain and trace data.
        2. First grounds trajectories using ground_new_trajectory().
        3. Then iteratively learns the action model with learn_rosame(), over varying epochs (e.g., 100 or 200).

    **Iterative Learning:**
        The experimental loops iterate over different numbers of trajectories, cross-validation folds, and epoch settings.


  
