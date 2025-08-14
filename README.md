# 🛡️ Insurance Premium Category Predictor

A **FastAPI**-based machine learning API that predicts **insurance premium categories** based on user-provided data.  
This project is **Dockerized** for easy deployment and is live on Render.

## 🚀 Live Demo
🔗 **[Insurance Premium Predictor on Render](https://insuarance-premium-category-predictor.onrender.com/)**

---

## ✨ Features
- 🔍 Predict insurance premium category from user inputs.
- ⚡ Built with **FastAPI** for high performance.
- 📦 Dockerized for quick deployment.
- 📜 Interactive API docs with **Swagger UI** & **ReDoc**.

---

## 📂 Repository Structure
.
├── config/ # Configuration files
├── model/ # Trained ML model and related files
├── app.py # Main FastAPI application
├── requirements.txt # Python dependencies
├── Dockerfile # Docker configuration
└── README.md # Project documentation

## ⚙️ Configuration
- All configuration files are in the `config/` directory.
- Modify environment variables or configuration parameters as needed before running the API.

---

## 🧠 Model Details
- Stored in the `model/` directory.
- Trained on historical insurance data.
- Predicts categories: **Low**, **Medium**, **High**.
- Built with **scikit-learn**.
- **Features include:**
  - Age
  - BMI
  - Smoker status
  - Region

---

## 📦 Requirements
**Main dependencies:**
- `fastapi`
- `uvicorn`
- `scikit-learn`
- `pandas`
- `numpy`

Full list available in [`requirements.txt`](requirements.txt).
