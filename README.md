# ISM: Interpretable Structural Modeling

ISM is a framework that combines the predictive power of deep learning with improved explanation faithfulness. It addresses challenges in Explainable AI (XAI) by introducing a structure-learning-based model that balances interpretability and predictive performance. Faithfulness is rigorously evaluated through qualitative and quantitative methods, outperforming baseline approaches in both predictive accuracy and explanation reliability.

## Features

- **Explainable Classification**: Offers faithful explanations for classification tasks, ensuring transparency in decision-making processes.

- **Explainable Regression**: Provides interpretable models for regression tasks, enabling users to understand the relationship between input features and predictions.

- **Visualization Tools**: Includes utilities for visualizing predictions, targets, and learned causal structures to enhance interpretability.


## Project Structure
├── dataset/ # Contains datasets for experiments  
├── run/ # Stores experiment results and outputs    
├── src/ # Source code for the project   
    │ ├── ism/ # Core ISM implementation  
    │ ├── cmd/ # Command-line utilities  
├── requirements.txt # Python dependencies  
├── README.md # Project documentation  
├── LICENSE # License information 

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Pxtri2156/ISM.git
   cd ISM
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Set up the environment:
   - Ensure you have Python 3.8+ installed.
   - Install [Weights & Biases](https://wandb.ai/) for logging:
     ```bash
     pip install wandb
     ```

## Usage

#### For Regression (`xai_reg.py`)

1. Prepare your dataset and place it in the `dataset/` directory.
2. Modify the arguments in the `arg_parser()` function in `src/ism/xai_reg.py` to configure paths, hyperparameters, and settings.
3. Run the script:
   ```bash
   python src/ism/xai_reg.py
   ```

#### For Classification (`xai_cls.py`)

1. Prepare your dataset and place it in the `dataset/` directory.
2. Modify the arguments in the `arg_parser()` function in `src/ism/xai_cls.py` to configure paths, hyperparameters, and settings.
3. Run the script:
   ```bash
   python src/ism/xai_cls.py
   ```

### Key Arguments

- `--root_path`: Path to store experiment outputs.
- `--data_path`: Path to the dataset file.
- `--data_name`: Name of the dataset.
- `--lambda_reg`: Regularization weight for regression loss (for `xai_reg.py`).
- `--lambda1`, `--lambda2`: Regularization weights for L1 and L2 penalties.
- `--ratio_test`: Ratio of the dataset to use for testing.
- `--no_seeds`: Number of random seeds for reproducibility.
- `--wandb_mode`: Mode for WandB logging (`online`, `offline`, or `disabled`).

### Example Commands

#### Regression Example
```bash
python src/ism/xai_reg.py --data_path dataset/breast_cancer_uci.csv --data_name breast_cancer --lambda_reg 3 --no_seeds 5
```

#### Classification Example
```bash
python src/ism/xai_cls.py --data_path dataset/iris.csv --data_name iris --no_seeds 5
```

## Results
- Outputs are saved in the `run/` directory, organized by dataset and seed.
- Key results include:
  - `W_est.csv`: Learned adjacency matrix for the causal graph.
  - `final_reg.json`: Summary of test loss and R² scores (Regression), F1-Scores (Classification)  across seeds.

## Average Result

To compute the average results across multiple runs with different random seeds, the script `src/ism/average_graph.py` is used. This script processes the outputs from multiple runs and generates the following results:

- **`avg_dag_W_est_[dataset_name].csv`**: The averaged adjacency matrix (DAG) computed from the learned DAGs across all runs.
- **`mean_dag_array_[dataset_name].pdf`**: A visual representation of the averaged DAG in matrix form.
- **`vis_avg_dag_graph_[dataset_name].png`**: A graphical visualization of the averaged DAG structure.

### Steps to Compute Average Results

1. Ensure that you have run the experiments (`xai_reg.py` or `xai_cls.py`) with multiple random seeds (e.g., `--no_seeds 10`).
2. Run the `average_graph.py` script to compute the average results:
   ```bash
   python src/ism/average_graph.py --root_path run/ --data_name [dataset_name]
   ```
   Replace `[dataset_name]` with the name of your dataset (e.g., `breast_cancer`, `iris`).

### Example Command

For the `breast_cancer` dataset:
```bash
python src/ism/average_graph.py --root_path run/ --data_name breast_cancer
```


These results provide insights into the overall structure learned by the model across multiple runs, offering a more robust and reliable interpretation of the data.

## Credit
This project development is based on code from Zheng, X. et al. under Apache 2.0.
Source: https://github.com/xunzheng/notears