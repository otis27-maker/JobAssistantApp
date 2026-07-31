# JobAssistantApp Setup Guide

## One-Time Setup

1. **Run the setup script:**
   ```powershell
   .\setup.ps1
   ```
   This will:
   - Create a virtual environment (`venv/`)
   - Install all dependencies from `requirements.txt`

2. **Configure API Key:**
   ```powershell
   Copy-Item .env.example .env
   ```
   Edit `.env` and replace `your-api-key-here` with your actual OpenAI API key

## Running the App

After setup, use this command to run the app:
```powershell
.\run.ps1
```

The app will open at `http://localhost:8501`

## PowerShell Execution Policy (if needed)

If you get an execution policy error, run this once:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## What Each File Does

- **setup.ps1** - Creates virtual environment and installs dependencies (run once)
- **run.ps1** - Activates the virtual environment and launches the app (run every time)
- **.env** - Stores your sensitive API key (create from .env.example)
- **.gitignore** - Prevents committing venv and .env to version control

## Troubleshooting

- **"Activate.ps1 cannot be loaded"**: See PowerShell Execution Policy section above
- **Dependencies not installing**: Try `python -m pip install -r requirements.txt` manually
- **App won't start**: Ensure your `.env` file has a valid OpenAI API key
