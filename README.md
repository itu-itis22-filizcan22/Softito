# SoftITo AI Software Engineering Track

This repository contains structured implementations, hands-on labs, and applied engineering modules developed throughout the SoftITo AI Software Development Program. The track bridges core computer engineering fundamentals with modern data pipelines, autonomous agent architectures, and production MLOps workflows.

---

## 📂 Project Structure

### 1. Core Systems & Relational Data (`01_systems_and_relational_foundations`)
A foundational module focusing on core computer systems, architectural patterns, and relational data persistence.
* **Concepts Covered:**
  * Software architecture patterns, version control workflows, and project systematics.
  * Relational schema modeling, normalization, constraints, and DDL/DML query construction.
  * Data structures and baseline algorithmic complexity analysis.

### 2. Python & Mathematical Foundations (`02_python_and_math_core`)
Applied programming and mathematical foundations tailored for machine learning workflows.
* **Concepts Covered:**
  * Modern Python syntax, object-oriented design (OOP), modularity, and error handling.
  * Linear algebra, matrix operations, and vectorized computations using NumPy.
  * Data wrangling, feature transformation, and exploratory data analysis (EDA) using Pandas.
  * Descriptive statistics, probability distributions, and inferential analysis.

### 3. Classical Machine Learning (`03_applied_machine_learning`)
End-to-end implementation of statistical learning algorithms and validation methodologies.
* **Concepts Covered:**
  * Supervised paradigms: Linear/Logistic Regression, Decision Trees, Random Forests, Gradient Boosting.
  * Unsupervised paradigms: K-Means clustering, PCA dimensional reduction.
  * Data leakage prevention, cross-validation strategies, and hyperparameter tuning.
  * Evaluation metrics: ROC-AUC, Precision-Recall curves, F1-score, and MSE/RMSE.

### 4. Deep Learning & Natural Language Processing (`04_deep_learning_nlp`)
Neural network architectures and natural language processing pipelines.
* **Concepts Covered:**
  * Multi-layer perceptrons (MLP), backpropagation, and optimization algorithms in PyTorch/TensorFlow.
  * Text preprocessing, tokenization, embeddings, and attention-based Transformer models.
  * Model evaluation, overfitting mitigation (regularization, dropout), and checkpointing.

### 5. Big Data & Orchestrated Pipelines (`05_big_data_pipelines`)
Distributed data processing and automated batch/stream data orchestration.
* **Concepts Covered:**
  * Distributed compute engines: Apache Spark (PySpark) transformations and actions.
  * Large-scale data ingestion architectures using Hadoop ecosystems.
  * Building resilient ETL/ELT workflows orchestrated with Apache Airflow DAGs.

### 6. Vector Databases & Advanced RAG (`06_vector_databases_rag`)
Information retrieval systems and semantic knowledge augmentation.
* **Concepts Covered:**
  * Dense vector embeddings, distance metrics (Cosine, Euclidean), and indexing strategies (HNSW).
  * Vector store implementations using Chroma / Pinecone / Qdrant.
  * Chunking strategies, hybrid search, and semantic re-ranking pipelines.
  * Quantitative pipeline evaluation using the RAGAS framework.

### 7. Autonomous AI Agents & Fine-Tuning (`07_agentic_ai_finetuning`)
Tool-calling agent systems and task-specific model optimization.
* **Concepts Covered:**
  * Multi-step reasoning loops, autonomous function calling, and structured output parsing.
  * Parameter-efficient fine-tuning (PEFT / LoRA) on domain-specific datasets.
  * Guardrails, prompt engineering systematics, and context management.

### 8. Computer Vision & Stream Processing (`08_computer_vision_analytics`)
Image feature extraction and real-time visual analytics.
* **Concepts Covered:**
  * Image filtering, morphological operations, and edge detection using OpenCV.
  * Real-time object detection and multi-stream video analysis pipelines.

### 9. Production MLOps & Deployment (`09_mlops_production`)
Containerization, high-performance API serving, and runtime model observability.
* **Concepts Covered:**
  * Low-latency inference endpoints built with FastAPI and Pydantic validation schemas.
  * Multi-stage Docker containerization and Kubernetes (K8s) deployment manifests.
  * Live monitoring, latency tracking, and data drift detection.

### 10. Industry Capstone Project (`10_capstone_solution`)
A comprehensive, end-to-end production AI system incorporating custom pipelines, API services, and complete technical documentation.

---

## 🚀 How to Run

1. **Ensure you have Python 3.11+ and Git installed.**

2. **Clone this repository:**
   ```bash
   git clone [https://github.com/YOUR_GITHUB_USERNAME/softito-ai-engineering.git](https://github.com/YOUR_GITHUB_USERNAME/softito-ai-engineering.git)

     python3 -m venv .venv
     source .venv/bin/activate  # On Windows: .venv\Scripts\activate
    pip install -r requirements.txt


🛠️ Tech Stack

Languages: Python 3.11+, SQL

Data Processing & Big Data: NumPy, Pandas, Apache Spark (PySpark), Apache Airflow

Vector Stores & RAG: Chroma, Qdrant, RAGAS Framework

Machine Learning & Deep Learning: Scikit-Learn, PyTorch, Hugging Face

Computer Vision: OpenCV

Deployment & MLOps: FastAPI, Docker, Kubernetes


👨‍💻 Author

Başar Filizcan

Computer Engineering Student at Istanbul Technical University (ITU)
