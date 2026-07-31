# Job Assistant App

A Streamlit-based AI job application assistant that helps analyze resumes, match job descriptions, and generate tailored application materials.

## Features
- Upload a resume in PDF, DOCX, or TXT format
- Extract skills and identify gaps
- Compare resume content against sample job postings
- Generate job-focused summaries and application support content

## Setup
1. Create and activate a Python virtual environment
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run the app:
   ```powershell
   .\run.ps1
   ```

> If you prefer to run Streamlit directly after activating the virtual environment:
> ```powershell
> streamlit run app.py
> ```

## Configuration
If you want live LLM features, set your OpenAI API key in the environment or Streamlit secrets:

```toml
OPENAI_API_KEY = "your-api-key"
```

## Notes
The app can run in a lightweight offline mode for basic parsing and analysis, but live AI generation requires a valid API key and the OpenAI package.
