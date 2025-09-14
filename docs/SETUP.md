# Setup Instructions

##  Requirements
- Modern browser (Chrome 120+ or Samsung Internet on Honor 90).
- Internet connection for Firebase and OpenRouter APIs.
- Optional: Python 3.10+ for KNN prototype (not integrated).
- No server setup needed (static HTML/JS).

##  Installation
```bash
# Clone the repository
git clone https://github.com/Makhavhu7/FINANCE-AI
cd SAIntervarsityHackathon-FinancialWorldQuest-2025

# No dependencies to install (CDN-based)
# Optional: Install Python dependencies for KNN prototype
pip install scikit-learn numpy pandas
RUN pip3 install --no-cache-dir \
fastapi==0.68.0 \
uvicorn==0.15.0 \
scikit-learn==1.0.2 \
python-multipart==0.0.5