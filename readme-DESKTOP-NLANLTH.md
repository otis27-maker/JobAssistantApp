# Agentic CTI Job Application Assistant

An enterprise-grade, multi-agent AI application designed to automate, match, and evaluate job application materials using Cyber Threat Intelligence (CTI) risk management principles and strict HHH (Helpful, Honest, Harmless) safety guardrails.

---

## 📌 Features
- **Multi-Agent Orchestration:** Sequential extraction, matching, generation, critique, and independent auditing.
- **Data Privacy & Security:** Automated PII scrubbing (phone, email, links) and pre-processing regex sanitization against prompt injection/XML attacks.
- **In-Session Version Control:** Snapshot management tracking resume iterations in Streamlit state.
- **Loop Halting & Early Exit Gate:** Enforces a 25% skill-overlap threshold to prevent AI hallucination on poor-fit roles, with a hard cap of 3 revision loops.
- **LLM Judge Auditing:** Isolated evaluator scoring drafts on quantitative alignment, honesty, and harmlessness metrics.

---

## 🛠️ Installation & Setup

### 1. Prerequisites
- Python 3.9+ installed on your machine.
- An OpenAI API Key (optional; fallback local heuristics available).

### 2. Clone & Install Dependencies
```bash
git clone <your-repository-url>
cd <repository-folder>
pip install -r requirements.txt

> If you prefer to run Streamlit directly after activating the virtual environment:
> ```powershell
> streamlit run app.py
> ```

## Configuration
If you want live LLM features, set your OpenAI API key in the environment or Streamlit secrets:

```toml
OPENAI_API_KEY = "your-api-key"
```

###🚀 Running the Application
Launch the Streamlit interface locally:

Bash
streamlit run app.py
Navigating to http://localhost:8501 in your browser will open the CTI Dashboard.

🔬 Running System Evaluations
Open the application and navigate to the Evaluation / Risk Dashboard tab.

Review active risk register mitigations, system latency metrics, and agent execution logs.

Export the agent trace JSON from the Generate Package tab to analyze model reasoning and loop metrics.

📂 Repository Structure
Plaintext
├── app.py                      # Main Streamlit UI & Multi-Agent Orchestrator
├── requirements.txt            # Python dependencies
├── README.md                   # Installation & operational documentation
├── Architecture_Diagram.png    # High-resolution agent workflow diagram
└── Evaluation_Data.json        # Pilot benchmark results & test trace history

## Notes
The app can run in a lightweight offline mode for basic parsing and analysis, but live AI generation requires a valid API key and the OpenAI package.
